import 'dart:async';

import 'package:awaj/features/main/new_routes/main_alert_toast.dart';
import 'package:awaj/features/main/new_routes/store/main_mock.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  bool _loading = false;
  String otpValue = "";
  int _timerSeconds = 60;
  Timer? _timer;
  bool _canResendOTP = false;

  void _startTimer() {
    setState(() {
      _timerSeconds = 60;
      _canResendOTP = false;
    });
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timerSeconds > 0) {
        setState(() {
          _timerSeconds--;
        });
      } else {
        setState(() {
          _canResendOTP = true;
        });
        timer.cancel();
      }
    });
  }

  void _resendOTP() {
    if (_canResendOTP) {
      MockAPI.sendOTP("+123456789"); // Mock API call
      _startTimer();
    }
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _verifyOTP() async {
    setState(() => _loading = true);
    bool verified = await MockAPI.verifyOTP(otpValue);
    setState(() => _loading = false);
    if (verified) {
      // context.push('/main/user-details');
      GoRouter.of(context).go('/main/user-details');
    } else {
      showToast(
        context: context,
        builder: buildToast,
        location: ToastLocation.bottomCenter,
      );
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(context.tr('Invalid OTP'))));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer!.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          leading: [
            IconButton.text(
              icon: Icon(Icons.arrow_back),
              onPressed: () => GoRouter.of(context).pop(),
            ),
          ],
        )
      ],
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.tr('OTP Verification')).large().semiBold(),
            Gap(20),
            Alert(
              title: Text(context.tr('Info')).large(),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(context.tr('1. Please wait for OTP to arrive on your phone')),
                  Text(context.tr('2. OTP is valid for 5 miniutes')),
                  Text(context.tr('3. Never share your OTP with anyone')),
                ],
              ),
              leading: Icon(Icons.info_outline),
            ),
            Gap(20),
            FormField(
              labelAxisAlignment: MainAxisAlignment.center,
              key: FormKey('nid'),
              label: Center(child: Text(context.tr('Enter OTP below'))),
              child: Center(
                child: InputOTP(
                  onChanged: (value) {
                    setState(() {
                      otpValue = value.otpToString();
                    });
                  },
                  children: [
                    InputOTPChild.input(keyboardType: TextInputType.number),
                    InputOTPChild.input(keyboardType: TextInputType.number),
                    InputOTPChild.input(keyboardType: TextInputType.number),
                    InputOTPChild.input(keyboardType: TextInputType.number),
                  ],
                ),
              ),
            ),
            Gap(18),
            Center(
              child: _loading
                  ? CircularProgressIndicator()
                  : PrimaryButton(
                      onPressed: _verifyOTP,
                      child: Text(context.tr('Verify OTP')),
                    ),
            ),
            Gap(32),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(context.tr(_canResendOTP ? "Didn't receive OTP? " : "Resend OTP in $_timerSeconds sec")),
              _canResendOTP
                  ? GestureDetector(
                      onTap: _resendOTP,
                      child: Text(
                        "Resend OTP",
                      ).light().small(),
                    )
                  : SizedBox(),
            ]),
          ],
        ),
      ),
    );
  }
}
