import 'package:awaj/core/fhir/mock_fhir_auth_service.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginPage extends StatelessWidget {
  final FormKey<String> _emailKey = FormKey("email");
  final FormKey<String> _passwordKey = FormKey("password");

  LoginPage({super.key});

  final _secureStorage = const FlutterSecureStorage();
  final _auth = LocalAuthentication();

  Future<void> _saveCredentials(String email, String password) async {
    await _secureStorage.write(key: 'email', value: email);
    await _secureStorage.write(key: 'password', value: password);
  }

  Future<void> _biometricLogin(BuildContext context) async {
    if (kIsWeb) return;
    try {
      final isAvailable = await _auth.canCheckBiometrics;
      if (!isAvailable) {
        if (context.mounted) _showError(context, 'Biometric login not available');
        return;
      }
      final authenticated = await _auth.authenticate(
        localizedReason: 'Log in with fingerprint',
        biometricOnly: true,
      );
      if (!authenticated) return;

      final email = await _secureStorage.read(key: 'email');
      final password = await _secureStorage.read(key: 'password');
      if (email != null && password != null) {
        await MockFhirAuthService.login(email, password);
        if (context.mounted) context.go("/main/menu");
      } else {
        if (context.mounted) _showError(context, 'No saved credentials found');
      }
    } catch (err) {
      if (context.mounted) _showError(context, err.toString());
    }
  }

  void _showError(BuildContext context, String message) {
    showToast(
      context: context,
      builder: (context, overlay) => SurfaceCard(
        child: Basic(
          title: Text(message),
          trailing: PrimaryButton(
            size: ButtonSize.small,
            onPressed: () => overlay.close(),
            child: const Text('OK'),
          ),
          trailingAlignment: Alignment.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Form(
              onSubmit: (context, values) async {
                try {
                  await MockFhirAuthService.login(
                    values[_emailKey],
                    values[_passwordKey],
                  );
                  await _saveCredentials(values[_emailKey], values[_passwordKey]);
                  if (context.mounted) context.go("/main/menu");
                } catch (err) {
                  if (context.mounted) _showError(context, err.toString());
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Official badge
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.muted,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: theme.colorScheme.border.withValues(alpha: 0.3)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified, size: 14, color: theme.colorScheme.primary),
                        const Gap(6),
                        Text('OFFICIAL REGISTERED SYSTEM').xSmall().bold(),
                      ],
                    ),
                  ),
                  const Gap(20),

                  // App icon
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.card,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.foreground.withValues(alpha: 0.06),
                          blurRadius: 24,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.medical_services, color: theme.colorScheme.primaryForeground, size: 28),
                    ),
                  ),
                  const Gap(24),

                  // Title
                  const Text('Welcome Back to').x2Large().extraBold(),
                  Text('The Clinical Curator',
                    style: TextStyle(color: theme.colorScheme.primary),
                  ).x2Large().extraBold(),
                  const Gap(12),

                  // Subtitle
                  const Text(
                    'Precision-driven health management for practitioners. Securely access patient registries and diagnostic insights.',
                    textAlign: TextAlign.center,
                  ).small().muted(),
                  const Gap(32),

                  // Email field
                  FormField(
                    key: _emailKey,
                    label: const Text('WORK EMAIL').xSmall().bold(),
                    validator: const LengthValidator(min: 4),
                    child: TextField(
                      placeholder: const Text('name@medical-center.org'),
                      features: [
                        InputFeature.leading(Icon(Icons.mail_outline, size: 20, color: theme.colorScheme.mutedForeground)),
                      ],
                    ),
                  ),
                  const Gap(16),

                  // Password field
                  FormField(
                    key: _passwordKey,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('PASSWORD').xSmall().bold(),
                        LinkButton(
                          onPressed: () {},
                          child: Text('Forgot?', style: TextStyle(color: theme.colorScheme.primary)).xSmall().bold(),
                        ),
                      ],
                    ),
                    validator: const LengthValidator(min: 4),
                    child: TextField(
                      placeholder: const Text('••••••••'),
                      obscureText: true,
                      features: [
                        InputFeature.leading(Icon(Icons.lock_outline, size: 20, color: theme.colorScheme.mutedForeground)),
                        InputFeature.passwordToggle(),
                      ],
                    ),
                  ),
                  const Gap(24),

                  // Sign In button + biometric
                  Row(
                    children: [
                      Expanded(
                        child: SubmitButton(
                          child: const Text('Sign In').bold(),
                        ),
                      ),
                      if (!kIsWeb) ...[
                        const Gap(12),
                        IconButton.outline(
                          onPressed: () => _biometricLogin(context),
                          size: ButtonSize.large,
                          icon: const Icon(Icons.fingerprint),
                        ),
                      ],
                    ],
                  ),
                  const Gap(20),

                  // Patient account link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Need a patient account? ').small().muted(),
                      LinkButton(
                        onPressed: () => context.go('/main/register'),
                        child: const Text('Create an account').small().bold(),
                      ),
                    ],
                  ),
                  const Gap(16),

                  // Divider with "or"
                  Row(
                    children: [
                      Expanded(child: Divider(color: theme.colorScheme.border.withValues(alpha: 0.3))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Text('OR').xSmall().bold().muted(),
                      ),
                      Expanded(child: Divider(color: theme.colorScheme.border.withValues(alpha: 0.3))),
                    ],
                  ),
                  const Gap(16),

                  // Practitioner registration button
                  OutlineButton(
                    onPressed: () => context.go('/main/practitioner-registration'),
                    size: ButtonSize.large,
                    child: Column(
                      children: [
                        const Text('Register as a Practitioner').bold(),
                        const Gap(2),
                        const Text('Practitioner roles include a standard patient account').xSmall().muted(),
                      ],
                    ),
                  ),
                  const Gap(28),

                  // Secure access divider
                  Row(
                    children: [
                      Expanded(child: Divider(color: theme.colorScheme.border.withValues(alpha: 0.2))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Text('SECURE ACCESS').xSmall().bold().muted(),
                      ),
                      Expanded(child: Divider(color: theme.colorScheme.border.withValues(alpha: 0.2))),
                    ],
                  ),
                  const Gap(16),

                  // Compliance badges
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.verified_user, size: 18, color: theme.colorScheme.primary),
                      const Gap(6),
                      const Text('HIPAA Compliant').xSmall().bold(),
                      const Gap(24),
                      Icon(Icons.lock, size: 18, color: theme.colorScheme.primary),
                      const Gap(6),
                      const Text('256-bit Encryption').xSmall().bold(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
