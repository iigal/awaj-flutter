import 'package:awaj/features/main/new_routes/main_alert_toast.dart';
import 'package:awaj/features/main/new_routes/store/main_mock.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _loading = false;

  void _sendOTP() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      showToast(
        context: context,
        builder: (context, overlay) => buildToast(context, overlay, message: 'Passwords do not match'),
        location: ToastLocation.bottomCenter,
      );
      return;
    }
    setState(() => _loading = true);
    bool otpSent = await MockAPI.sendOTP(_phoneController.text);
    setState(() => _loading = false);
    if (otpSent) {
      // context.push('/main/otp-verification');
      GoRouter.of(context).go('/main/otp-verification');
    } else {
      showToast(
        context: context,
        builder: buildToast,
        location: ToastLocation.bottomCenter,
      );
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to send OTP')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          leading: [
            IconButton.outline(
              icon: Icon(Icons.arrow_back),
              onPressed: () => GoRouter.of(context).pop(),
            ),
          ],
        )
      ],
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(20),
            Text('Verify Phone Number').large().semiBold(),
            Gap(12),
            Alert(
              title: Text('Info').large(),
              content: Text('Use the primary phone number used with NID'),
              leading: Icon(Icons.info_outline),
            ),
            Gap(32),
            FormField(
              key: FormKey('phone'),
              label: const Text('Enter your primary phone number'),
              validator: const LengthValidator(min: 8),
              // showErrors: const {FormValidationMode.changed, FormValidationMode.submitted},
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                placeholder: Text('Enter phone number'),
              ),
            ),
            Gap(18),
            FormField(
              key: FormKey('password'),
              label: const Text('Set a password'),
              validator: const LengthValidator(min: 8),
              // showErrors: const {FormValidationMode.changed, FormValidationMode.submitted},
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                placeholder: Text('Set Password'),
              ),
            ),
            Gap(18),
            FormField(
              key: FormKey('confirmpassword'),
              label: const Text('Confirm your password'),
              validator: const LengthValidator(min: 8),
              // showErrors: const {FormValidationMode.changed, FormValidationMode.submitted},
              child: TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                placeholder: Text('Confirmation Password'),
              ),
            ),
            Gap(18),
            Center(
              child: _loading
                  ? CircularProgressIndicator()
                  : PrimaryButton(
                      onPressed: _sendOTP,
                      child: Text('Send OTP'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
