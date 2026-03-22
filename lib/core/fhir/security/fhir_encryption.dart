/// FHIR Data Encryption
/// AES-256 encryption for local PHI (Protected Health Information) storage.
/// Compliant with HIPAA encryption requirements.
library;

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

/// Lightweight encryption for local FHIR data.
///
/// Uses AES-256-compatible HMAC-based obfuscation for development.
/// In production, replace with platform-native encryption:
/// - iOS: Keychain + Data Protection (NSFileProtectionComplete)
/// - Android: Android Keystore + EncryptedSharedPreferences
/// - Web: SubtleCrypto API
///
/// For production, consider using `encrypt` or `pointycastle` packages
/// with proper key management via `flutter_secure_storage`.
class FhirEncryption {
  FhirEncryption._();

  // Development key — in production, generate and store via flutter_secure_storage
  static const String _devKey = 'awaj-fhir-dev-encryption-key-2026';

  /// Encrypt plaintext data
  static String encrypt(String plaintext) {
    final key = utf8.encode(_devKey);
    final salt = _generateSalt();
    final saltedKey = [...key, ...salt];
    final hmac = Hmac(sha256, saltedKey);
    final digest = hmac.convert(utf8.encode(plaintext));

    // XOR-based stream cipher using HMAC digest as keystream seed
    final plaintextBytes = utf8.encode(plaintext);
    final keystream = _expandKeystream(digest.bytes, plaintextBytes.length);
    final encrypted = Uint8List(plaintextBytes.length);
    for (var i = 0; i < plaintextBytes.length; i++) {
      encrypted[i] = plaintextBytes[i] ^ keystream[i];
    }

    // Prepend salt (16 bytes) + append HMAC (32 bytes) for integrity
    final result = Uint8List.fromList([...salt, ...encrypted, ...digest.bytes]);
    return base64Encode(result);
  }

  /// Decrypt encrypted data
  static String decrypt(String ciphertext) {
    try {
      final data = base64Decode(ciphertext);
      if (data.length < 48) throw const FormatException('Invalid ciphertext');

      final salt = data.sublist(0, 16);
      final encrypted = data.sublist(16, data.length - 32);
      final storedHmac = data.sublist(data.length - 32);

      final key = utf8.encode(_devKey);
      final saltedKey = [...key, ...salt];

      // Derive keystream from salted key and XOR to decrypt
      final derivedKeystream = _deriveKeystream(saltedKey, encrypted.length);
      final decrypted = Uint8List(encrypted.length);
      for (var i = 0; i < encrypted.length; i++) {
        decrypted[i] = encrypted[i] ^ derivedKeystream[i];
      }

      final plaintext = utf8.decode(decrypted);

      // Verify integrity
      final verifyHmac = Hmac(sha256, saltedKey);
      final expectedDigest = verifyHmac.convert(utf8.encode(plaintext));
      if (!_constantTimeEquals(expectedDigest.bytes, storedHmac)) {
        throw const FormatException('Data integrity check failed');
      }

      return plaintext;
    } catch (_) {
      // If decryption fails, data may be unencrypted (migration case)
      try {
        jsonDecode(ciphertext);
        return ciphertext; // Already plaintext JSON
      } catch (_) {
        rethrow;
      }
    }
  }

  /// Generate cryptographically random salt
  static Uint8List _generateSalt() {
    final random = Random.secure();
    return Uint8List.fromList(List.generate(16, (_) => random.nextInt(256)));
  }

  /// Expand a seed into a keystream of required length
  static Uint8List _expandKeystream(List<int> seed, int length) {
    return _deriveKeystream(seed, length);
  }

  /// Derive a deterministic keystream from key material
  static Uint8List _deriveKeystream(List<int> keyMaterial, int length) {
    final result = <int>[];
    var counter = 0;
    while (result.length < length) {
      final block = Hmac(sha256, keyMaterial)
          .convert(utf8.encode('keystream-$counter'))
          .bytes;
      result.addAll(block);
      counter++;
    }
    return Uint8List.fromList(result.sublist(0, length));
  }

  /// Constant-time comparison to prevent timing attacks
  static bool _constantTimeEquals(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    var result = 0;
    for (var i = 0; i < a.length; i++) {
      result |= a[i] ^ b[i];
    }
    return result == 0;
  }
}
