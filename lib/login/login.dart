import 'package:awaj/components/base_url.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:moon_design/moon_design.dart';

class LoginScreen extends StatefulWidget {
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

    final response = await _sendLoginRequest(
        _emailController.text, _passwordController.text);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == 200) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        _showAlertDialog(data['message']);
      }
    } else {
      _showAlertDialog(
          'Something went wrong. Please check your Internet Connection!');
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
      Uri.parse(BaseUrl.baseUrl + '/login'),
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const Text('Welcome!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text('Login to your account',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MoonFormTextInput(
                  controller: _emailController,
                  validator: (String? value) =>
                      value != null && value.length < 5
                          ? "The text should be longer than 5 characters."
                          : null,
                  onTap: () => _emailController.clear(),
                  trailing: GestureDetector(
                    child: const Icon(MoonIcons.controls_close_small_24_light),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MoonFormTextInput(
                  controller: _passwordController,
                  validator: (String? value) =>
                      value != null && value.length < 5
                          ? "The text should be longer than 5 characters."
                          : null,
                  onTap: () => _passwordController.clear(),
                  obscureText: _obscureText,
                  trailing: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                    onPressed: _togglePasswordVisibility,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  // Implement forgot password functionality
                },
                child: const Text('Forgot Password?',
                    style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(height: 12),
              _isLoading
                  ? const CircularProgressIndicator()
                  : MoonFilledButton(
                      onTap: _login,
                      label: const Text('Login'),
                    ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text('Sign Up',
                        style: TextStyle(color: Colors.blue)),
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
