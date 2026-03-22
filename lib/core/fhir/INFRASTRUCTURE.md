# FHIR R5 Infrastructure — Awaj Health App

## Architecture Overview

```
┌──────────────────────────────────────────────────────────────┐
│                     Awaj Flutter App                          │
│                                                              │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────────┐│
│  │  Auth     │  │  REST    │  │  Sync    │  │  Security    ││
│  │  Service  │  │  Client  │  │  Service │  │  Layer       ││
│  │  (SMART)  │  │  (CRUD)  │  │  (Bi-dir)│  │  (AES+Audit)││
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └──────┬───────┘│
│       │              │             │                │        │
│  ┌────┴──────────────┴─────────────┴────────────────┴──────┐ │
│  │              Local Encrypted Store (SQLite/SP)          │ │
│  └─────────────────────────┬───────────────────────────────┘ │
└────────────────────────────┼─────────────────────────────────┘
                             │ HTTPS + TLS 1.3
                             ▼
              ┌──────────────────────────────┐
              │        FHIR R5 Server        │
              │     (HAPI FHIR / Cloud)      │
              │                              │
              │  ┌────────┐  ┌────────────┐  │
              │  │ OAuth2 │  │ FHIR REST  │  │
              │  │ Server │  │ Endpoint   │  │
              │  │(Keyclk)│  │ /baseR5    │  │
              │  └────────┘  └────────────┘  │
              │                              │
              │  ┌────────────────────────┐  │
              │  │   PostgreSQL / H2 DB   │  │
              │  └────────────────────────┘  │
              └──────────────────────────────┘
```

## Deployment Options

### Option 1: HAPI FHIR Server (Recommended for Start)

**Docker Compose** — self-hosted, full control:

```yaml
# docker-compose.yml
version: '3.8'
services:
  hapi-fhir:
    image: hapiproject/hapi:latest
    ports:
      - "8080:8080"
    environment:
      - hapi.fhir.fhir_version=R5
      - hapi.fhir.allow_external_references=true
      - hapi.fhir.allow_multiple_delete=true
      - hapi.fhir.server_address=http://localhost:8080/fhir
      - spring.datasource.url=jdbc:postgresql://db:5432/hapi
      - spring.datasource.username=hapi
      - spring.datasource.password=hapi123
      - spring.datasource.driverClassName=org.postgresql.Driver
      - spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
    depends_on:
      - db

  db:
    image: postgres:16-alpine
    environment:
      POSTGRES_DB: hapi
      POSTGRES_USER: hapi
      POSTGRES_PASSWORD: hapi123
    volumes:
      - hapi-data:/var/lib/postgresql/data
    ports:
      - "5432:5432"

  keycloak:
    image: quay.io/keycloak/keycloak:latest
    command: start-dev
    environment:
      KEYCLOAK_ADMIN: admin
      KEYCLOAK_ADMIN_PASSWORD: admin
    ports:
      - "8180:8080"

volumes:
  hapi-data:
```

**Start:** `docker compose up -d`
**FHIR Base URL:** `http://localhost:8080/fhir`
**Keycloak Admin:** `http://localhost:8180`

### Option 2: Google Cloud Healthcare API

Best for: production, managed, scalable, HIPAA BAA available.

```bash
# Enable API
gcloud services enable healthcare.googleapis.com

# Create dataset
gcloud healthcare datasets create awaj-health \
  --location=asia-south1

# Create FHIR store (R4 — R5 not yet supported on GCP)
gcloud healthcare fhir-stores create awaj-fhir \
  --dataset=awaj-health \
  --location=asia-south1 \
  --version=R4

# Base URL format:
# https://healthcare.googleapis.com/v1/projects/{project}/locations/{location}/datasets/{dataset}/fhirStores/{store}/fhir
```

### Option 3: Azure Health Data Services

```bash
# Create FHIR service
az healthcareapis service create \
  --resource-group awaj-rg \
  --resource-name awaj-fhir \
  --kind fhir-R4 \
  --location southeastasia
```

### Option 4: Public Sandbox (Development/Testing)

No setup required:

| Server | URL | R5 | Notes |
|--------|-----|-----|-------|
| HAPI Public | `https://hapi.fhir.org/baseR5` | Yes | Data may be cleared |
| Helios HFS | `https://hfs.heliossoftware.com` | Yes | Resets weekly |

Update `FhirConfig.baseUrl` to use any of these.

## Security Compliance

### HIPAA Requirements Covered

| Requirement | Implementation |
|-------------|---------------|
| Encryption at rest | AES-256 via `FhirEncryption` |
| Encryption in transit | TLS 1.2+ (HTTPS) |
| Access control | SMART on FHIR OAuth2 scopes |
| Audit logging | `FhirAuditLogger` → FHIR AuditEvent |
| Patient consent | `FhirConsentManager` → FHIR Consent |
| Session management | Token expiry + refresh |
| Minimum necessary | Scoped access (`patient/*.read`) |

### Data Security Layers

1. **Transport**: TLS 1.3 for all server communication
2. **Authentication**: OAuth2 + OpenID Connect (SMART on FHIR)
3. **Authorization**: FHIR scopes (e.g., `patient/Patient.read`)
4. **Storage**: AES-256 encrypted local store
5. **Audit**: Every data access logged as FHIR AuditEvent
6. **Consent**: Patient-controlled data sharing via FHIR Consent

### Production Hardening Checklist

- [ ] Replace dev encryption key with per-device key via `flutter_secure_storage`
- [ ] Enable certificate pinning (`FhirConfig.enableCertificatePinning`)
- [ ] Configure proper OAuth2 client credentials
- [ ] Set up Keycloak with SMART on FHIR realm
- [ ] Enable CORS on FHIR server for web
- [ ] Set up backup and disaster recovery for PostgreSQL
- [ ] Configure rate limiting on FHIR server
- [ ] Enable WAF (Web Application Firewall) in production
- [ ] Implement session timeout UI prompt
- [ ] Add biometric re-authentication for sensitive operations

## Data Sync Strategy

### Offline-First Architecture

1. **Write locally first** → mark as `SyncStatus.pending`
2. **Background sync** every 15 minutes (configurable)
3. **Push** local changes to server
4. **Pull** server changes for subscribed resources
5. **Conflict resolution**: Server wins with local backup

### Sync Flow

```
Local Write → Encrypted Store → Background Timer
                                       │
                                       ▼
                               Check Auth Token
                                       │
                                       ▼
                              Push Pending Changes
                                       │
                                       ▼
                              Pull Server Updates
                                       │
                                       ▼
                             Resolve Conflicts
                                       │
                                       ▼
                             Update Local Store
```

## File Structure

```
lib/core/fhir/
├── fhir.dart                          # Barrel export
├── fhir_config.dart                   # Server URLs, OAuth config, feature flags
├── fhir_constants.dart                # Resource types, code systems, value sets
├── mock_fhir_auth_service.dart        # Bridge: FHIR auth → PocketBase authStore
├── INFRASTRUCTURE.md                  # This file
│
├── models/                            # FHIR R5 Resource Models
│   ├── models.dart                    # Barrel export
│   ├── fhir_types.dart                # Core types (HumanName, Identifier, etc.)
│   ├── fhir_patient.dart              # Patient resource
│   ├── fhir_communication.dart        # Communication (complaints, announcements)
│   ├── fhir_location.dart             # Location (health facilities)
│   ├── fhir_organization.dart         # Organization
│   ├── fhir_bundle.dart               # Bundle (search results, transactions)
│   └── fhir_audit_event.dart          # AuditEvent (security logging)
│
├── auth/                              # SMART on FHIR Authentication
│   ├── fhir_auth_service.dart         # Auth service (mock + real structure)
│   ├── fhir_auth_token.dart           # OAuth2 token container
│   └── mock_fhir_auth.dart            # Mock patients and tokens
│
├── client/                            # FHIR REST Client
│   └── fhir_rest_client.dart          # CRUD, search, batch operations
│
├── mappers/                           # Data Mappers
│   ├── patient_mapper.dart            # FHIR Patient ↔ PocketBase record
│   ├── communication_mapper.dart      # FHIR Communication ↔ complaints/announcements
│   └── location_mapper.dart           # FHIR Location ↔ health facilities
│
├── store/                             # Local Data Store
│   └── fhir_local_store.dart          # Encrypted offline store with sync metadata
│
├── sync/                              # Data Synchronization
│   └── fhir_sync_service.dart         # Bidirectional sync with conflict resolution
│
├── security/                          # Security & Compliance
│   ├── fhir_encryption.dart           # AES-256 encryption for local PHI
│   ├── fhir_audit_logger.dart         # FHIR AuditEvent logging
│   └── fhir_consent_manager.dart      # Patient consent management
│
└── providers/                         # Riverpod Providers
    └── fhir_providers.dart            # DI for all FHIR services
```

## Migration Roadmap

### Phase 1 (Current): Mock FHIR Auth ✅
- Mock FHIR R5 Patient data for login
- PocketBase authStore bridge for backward compat
- All FHIR models and infrastructure in place

### Phase 2: Connect to FHIR Server
- Deploy HAPI FHIR via Docker
- Set `FhirConfig.useMockData = false`
- Create real Patient resources on server
- Enable data sync

### Phase 3: SMART on FHIR Auth
- Set up Keycloak with SMART on FHIR support
- Implement real OAuth2 flow via `flutter_appauth`
- Remove PocketBase auth dependency

### Phase 4: Full FHIR Migration
- Replace PocketBase collections with FHIR resources
- Complaints → Communication
- Announcements → Communication
- Health facilities → Location + Organization
- Remove PocketBase dependency entirely
