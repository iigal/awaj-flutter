import 'package:awaj/features/main/new_routes/main_alert_toast.dart';
import 'package:awaj/features/main/new_routes/store/main_mock.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class NIDVerificationScreen extends StatefulWidget {
  const NIDVerificationScreen({super.key});

  @override
  State<NIDVerificationScreen> createState() => _NIDVerificationScreenState();
}

class _NIDVerificationScreenState extends State<NIDVerificationScreen> {
  final TextEditingController _nidController = TextEditingController();
  bool _loading = false;

  void _verifyNID() async {
    setState(() => _loading = true);
    bool verified = await MockAPI.verifyNID(_nidController.text);
    setState(() => _loading = false);
    if (verified) {
      // context.push('/main/phone-verification');
      GoRouter.of(context).go('/main/phone-verification');
    } else {
      showToast(
        context: context,
        builder: buildToast,
        location: ToastLocation.bottomCenter,
      );
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(context.tr('NID not found'))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(32),
            SizedBox(
              height: 120,
              width: 120,
              child: CardImage(
                image: Image.asset(
                  "assets/images/flag.png",
                  fit: BoxFit.cover,
                ),
                style: ButtonStyle.secondary(
                  shape: ButtonShape.circle,
                ),
              ),
            ),
            Gap(12),
            Text(
              'Welcome to Hamro Health App',
              textAlign: TextAlign.center,
            ).x3Large().extraBold(),
            Gap(12),
            Text(
              'Your digital health companion for all your health needs',
              textAlign: TextAlign.center,
            ).light(),
            Gap(12),
            Alert(
              title: Text(context.tr('Info')).large(),
              content: Text(context.tr('National ID is required to verify your identity')),
              leading: Icon(Icons.info_outline),
            ),
            Gap(32),
            FormField(
              key: FormKey('nid'),
              label: Text(context.tr('Enter your NID below')),
              validator: const LengthValidator(min: 8),
              showErrors: const {FormValidationMode.changed, FormValidationMode.submitted},
              child: TextField(
                controller: _nidController,
                keyboardType: TextInputType.number,
                placeholder: Text(context.tr('Enter your NID')),
              ),
            ),
            Gap(32),
            Center(
              child: _loading
                  ? CircularProgressIndicator()
                  : PrimaryButton(
                      onPressed: _verifyNID,
                      child: Text(context.tr('Verify NID')),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
