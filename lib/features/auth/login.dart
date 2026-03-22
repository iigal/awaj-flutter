import 'package:awaj/components/base_url.dart';
import 'package:awaj/features/auth/models/auth.dart';
import 'package:awaj/features/auth/providers/auth_provider.dart';
import 'package:awaj/features/shared_components/labelled_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    try {
      if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
        _showAlertDialog('Please provide all the fields.');
        setState(() {
          _isLoading = false;
        });
        return;
      }

      if (!_isValidEmail(_emailController.text)) {
        _showAlertDialog('Please provide a valid email.');
        setState(() {
          _isLoading = false;
        });
        return;
      }

      final response = await _sendLoginRequest(_emailController.text, _passwordController.text);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        ref.read(authProviderProvider.notifier).saveToken(AuthUser.fromJson(data));
        context.go('/home');
      } else {
        _showAlertDialog('Something went wrong. Please check your Internet Connection!');
      }
    } catch (err) {
      _showAlertDialog(err.toString());
    }

    setState(() {
      _isLoading = false;
    });
  }

  bool _isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    return emailRegex.hasMatch(email);
  }

  Future<http.Response> _sendLoginRequest(String email, String password) {
    return http.post(
      Uri.parse(BaseUrl.login),
      headers: {
        'Content-Type': 'application/json', // Ensure the correct content type
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
  }

  void _showAlertDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingHeader: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome!').x2Large().bold(),
            const Gap(
              8,
            ),
            const Text('Login to your account').semiBold(),
            const Gap(22),
            LabelledFormWidget(
              label: "Email Address",
              child: TextField(
                controller: _emailController,
                // validator: (String? value) => value != null && value.length < 5 ? "The text should be longer than 5 characters." : null,
                onTap: () => _emailController.clear(),
                features: [
                  InputFeature.trailing(
                    GestureDetector(
                      child: const Icon(Icons.close),
                    ),
                  )
                ],
                keyboardType: TextInputType.emailAddress,
                placeholder: const Text('Enter your email'),
              ),
            ),
            LabelledFormWidget(
              label: "Password",
              child: TextField(
                controller: _passwordController,
                // validator: (String? value) => value != null && value.length < 5 ? "The text should be longer than 5 characters." : null,
                onTap: () => _passwordController.clear(),
                features: [
                  InputFeature.passwordToggle(
                    icon: const Icon(Icons.visibility),
                    iconShow: const Icon(Icons.visibility_off),
                  )
                ],
                keyboardType: TextInputType.text,
                placeholder: const Text('Enter your password'),
              ),
            ),
            const Gap(
              18,
            ),
            _isLoading
                ? const CircularProgressIndicator()
                : OutlineButton(
                    onPressed: _login,
                    child: const Text('Login'),
                  ),
            const Gap(
              12,
            ),
            OutlineButton(
              onPressed: () {
                // Implement forgot password functionality
              },
              child: const Text('Forgot Password?', style: TextStyle(color: Colors.red)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Do not have an account yet?'),
                TextButton(
                  onPressed: () {
                    context.go("/signup");
                  },
                  child: const Text('Sign Up', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
