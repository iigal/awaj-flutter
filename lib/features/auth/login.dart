import 'package:awaj/components/base_url.dart';
import 'package:awaj/features/shared_components/labelled_form.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shadcn_flutter/shadcn_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });

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
      if (data['status'] == 200) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        _showAlertDialog(data['message']);
      }
    } else {
      _showAlertDialog('Something went wrong. Please check your Internet Connection!');
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
      headers: <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/json',
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
            Text('Welcome!'),
            Text('Login to your account'),
            const SizedBox(height: 22),
            LabelledFormWidget(
              label: "Email Address",
              child: TextField(
                controller: _emailController,
                // validator: (String? value) => value != null && value.length < 5 ? "The text should be longer than 5 characters." : null,
                onTap: () => _emailController.clear(),
                trailing: GestureDetector(
                  child: const Icon(Icons.close),
                ),
                keyboardType: TextInputType.emailAddress,
                placeholder: 'Enter your email',
              ),
            ),
            LabelledFormWidget(
              label: "Password",
              child: TextField(
                controller: _passwordController,
                // validator: (String? value) => value != null && value.length < 5 ? "The text should be longer than 5 characters." : null,
                onTap: () => _passwordController.clear(),
                obscureText: _obscureText,
                trailing: GestureDetector(
                  onTap: _togglePasswordVisibility,
                  child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                ),
                keyboardType: TextInputType.text,
                placeholder: 'Enter your password',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            _isLoading
                ? const CircularProgressIndicator()
                : OutlineButton(
                    onPressed: _login,
                    child: const Text('Login'),
                  ),
            const SizedBox(
              height: 12,
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
                    Navigator.pushNamed(context, '/signup');
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
