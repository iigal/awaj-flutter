import 'package:awaj/db.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginPage extends StatelessWidget {
  final FormKey<String> _userNameKey = FormKey("username");
  final FormKey<String> _passwordKey = FormKey("password");

  LoginPage({super.key});

  final _secureStorage = FlutterSecureStorage();

  Future<void> saveCredentials(String email, String password) async {
    await _secureStorage.write(key: 'email', value: email);
    await _secureStorage.write(key: 'password', value: password);
  }

  final _auth = LocalAuthentication();

  Future<bool> authenticateWithBiometrics() async {
    final isAvailable = await _auth.canCheckBiometrics;
    if (!isAvailable) return false;

    return await _auth.authenticate(
      localizedReason: 'Log in with fingerprint',
      options: const AuthenticationOptions(biometricOnly: true),
    );
  }

  Future<void> biometricLogin(BuildContext context) async {
    final authenticated = await authenticateWithBiometrics();
    if (!authenticated) {
      if (context.mounted) {
        showToast(
          context: context,
          builder: (context, overlay) {
            return SurfaceCard(
              child: Basic(
                title: Text(context.tr(LocaleKeys.authentication_biometricLoginNotConfigured)),
                trailing: PrimaryButton(
                    size: ButtonSize.small,
                    onPressed: () {
                      overlay.close();
                    },
                    child: const Text('cancel')),
                trailingAlignment: Alignment.center,
              ),
            );
          },
        );
      }
      return;
    }

    final email = await _secureStorage.read(key: 'email');
    final password = await _secureStorage.read(key: 'password');

    if (email != null && password != null) {
      try {
        RecordAuth recordAuth = await pocketBaseDB.collection('users').authWithPassword(
              email,
              password,
            );

        pocketBaseDB.authStore.save(recordAuth.token, recordAuth.record);
        await saveCredentials(
          email,
          password,
        );
        if (context.mounted) {
          context.go("/main/menu");
        }
      } on ClientException catch (err, _) {
        String errorText = "Something Went Wrong!";
        if (err.statusCode == 403) {
          errorText = err.response['message'] ?? "Invalid Credentials";
        }
        if (context.mounted) {
          showToast(
            context: context,
            builder: (context, overlay) {
              return SurfaceCard(
                child: Basic(
                  title: Text(errorText),
                  trailing: PrimaryButton(
                      size: ButtonSize.small,
                      onPressed: () {
                        overlay.close();
                      },
                      child: const Text('cancel')),
                  trailingAlignment: Alignment.center,
                ),
              );
            },
          );
        }
      }
    } else {
      if (context.mounted) {
        showToast(
          context: context,
          builder: (context, overlay) {
            return SurfaceCard(
              child: Basic(
                title: Text(context.tr(LocaleKeys.authentication_biometricLoginFailed)),
                trailing: PrimaryButton(
                    size: ButtonSize.small,
                    onPressed: () {
                      overlay.close();
                    },
                    child: const Text('cancel')),
                trailingAlignment: Alignment.center,
              ),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      headers: [
        AppBarWidget(
          hasBackButton: true,
          hasActionButton: false,
          showServerConfiguration: true,
          leading: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/flag.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          onSubmit: (context, values) async {
            try {
              RecordAuth recordAuth = await pocketBaseDB.collection('users').authWithPassword(
                    values[_userNameKey],
                    values[_passwordKey],
                  );

              pocketBaseDB.authStore.save(recordAuth.token, recordAuth.record);
              await saveCredentials(
                values[_userNameKey],
                values[_passwordKey],
              );
              if (context.mounted) {
                context.go("/main/menu");
              }
            } on ClientException catch (err, _) {
              String errorText = "Something Went Wrong!";
              if (err.statusCode == 403) {
                errorText = err.response['message'] ?? "Invalid Credentials";
              }
              if (context.mounted) {
                showToast(
                  context: context,
                  builder: (context, overlay) {
                    return SurfaceCard(
                      child: Basic(
                        title: Text(errorText),
                        trailing: PrimaryButton(
                            size: ButtonSize.small,
                            onPressed: () {
                              overlay.close();
                            },
                            child: const Text('cancel')),
                        trailingAlignment: Alignment.center,
                      ),
                    );
                  },
                );
              }
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Title Section
              Text(
                context.tr(LocaleKeys.welcomeTitle),
                textAlign: TextAlign.center,
              ).x2Large().extraBold(),
              const Gap(8),
              Text(
                context.tr(LocaleKeys.welcomeDescription),
                textAlign: TextAlign.center,
              ).small().light().muted(),
              const Gap(32),

              // Form Fields
              FormField(
                key: _userNameKey,
                label: Text(context.tr('username')),
                validator: const LengthValidator(min: 4),
                child: TextField(
                  placeholder: Text(context.tr(LocaleKeys.authentication_enterYourUsername)),
                ),
              ),
              const Gap(16),
              FormField(
                key: _passwordKey,
                label: Text(context.tr('password')),
                validator: const LengthValidator(min: 4),
                child: TextField(
                  placeholder: Text(context.tr(LocaleKeys.authentication_enterYourPassword)),
                  features: [
                    InputPasswordToggleFeature(),
                  ],
                  obscureText: true,
                ),
              ),
              const Gap(24),

              // Login Button
              Row(
                children: [
                  Expanded(
                    child: SubmitButton(
                      child: Text(context.tr(LocaleKeys.authentication_login)),
                    ),
                  ),
                  Gap(12),
                  IconButton.primary(
                    onPressed: () => biometricLogin(context),
                    icon: Icon(Icons.fingerprint),
                  )
                ],
              ),
              const Gap(16),

              // Registration Link
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.tr(LocaleKeys.authentication_dontHaveAnAccount),
                  ).muted().small(),
                  const Gap(4),
                  LinkButton(
                    onPressed: () => context.go('/main/register'),
                    child: Text(context.tr(LocaleKeys.authentication_register)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
