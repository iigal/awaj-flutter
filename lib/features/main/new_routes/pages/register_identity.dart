import 'package:awaj/db.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterIdentityPage extends StatefulWidget {
  const RegisterIdentityPage({super.key});

  @override
  State<RegisterIdentityPage> createState() => _RegisterIdentityPageState();
}

class _RegisterIdentityPageState extends State<RegisterIdentityPage> {
  final _formKey = GlobalKey<FormState>();
  final FormKey<String> _confirmPasswordKey = FormKey("confirmPassword");
  final FormKey<String> _usernameKey = FormKey("username");
  final FormKey<String> _phoneNumberKey = FormKey("phoneNumber");
  final FormKey<String> _passwordKey = FormKey("password");

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
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
        child: Form(
          onSubmit: (context, values) async {
            try {
              var body = {
                "username": values[_usernameKey],
                "password": values[_passwordKey],
                "passwordConfirm": values[_confirmPasswordKey],
                "phoneNumber": values[_phoneNumberKey],
              };
              await pocketBaseDB.collection('users').create(body: body);

              if (context.mounted) {
                context.go("/main");
              }
            } catch (e) {
              print(e.toString());
            }
          },
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Register Your Account',
                  textAlign: TextAlign.center,
                ).x2Large().extraBold(),
                const Gap(12),
                Alert(
                  title: Text(context.tr('Info')).bold(),
                  content: Text(context.tr('Please provide your details to register')).xSmall(),
                  leading: const Icon(Icons.info_outline),
                ),
                const Gap(12),
                // Username Field with Suffix
                FormField(
                  key: _usernameKey,
                  label: const Text('Username'),
                  hint: const Text('This is your public display name'),
                  validator: const LengthValidator(min: 4),
                  child: const TextField(
                    features: [
                      InputTrailingFeature(
                        Text("@mohp.digitalhealth.app"),
                      )
                    ],
                  ),
                ),
                const Gap(16),
                FormField(
                  key: _phoneNumberKey,
                  label: const Text('Phone Number'),
                  validator: const LengthValidator(max: 10),
                  child: const TextField(
                    initialValue: '9841773445',
                  ),
                ),
                const Gap(16),
                FormField(
                  key: FormKey("email"),
                  label: const Text('Email (Optional)'),
                  // validator: const LengthValidator(min: 4),
                  child: const TextField(
                    hintText: 'xxxx@xxxx.com',
                  ),
                ),
                const Gap(16),
                FormField(
                  key: _passwordKey,
                  label: const Text('Password'),
                  validator: const LengthValidator(min: 8),
                  showErrors: const {FormValidationMode.submitted, FormValidationMode.changed},
                  child: const TextField(
                    obscureText: true,
                  ),
                ),
                FormField<String>(
                  key: _confirmPasswordKey,
                  label: const Text('Confirm Password'),
                  showErrors: const {FormValidationMode.submitted, FormValidationMode.changed},
                  validator: CompareWith.equal(_passwordKey, message: 'Passwords do not match'),
                  child: const TextField(
                    obscureText: true,
                  ),
                ),
                const Gap(32),
                Center(
                    child: SubmitButton(
                  child: Text(context.tr('Register')),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
