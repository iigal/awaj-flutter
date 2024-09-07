import 'package:awaj/login/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:awaj/components/base_url.dart';
import 'package:awaj/components/custom_modal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:moon_design/moon_design.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _voterIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();

  bool _eyeStatus = true;
  bool _eyeStatusConfirm = true;
  bool _isLoading = false;
  bool _modalVisible = false;
  String _modalText = '';

  bool formValidation() {
    return _fullnameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _cpasswordController.text.isNotEmpty &&
        _phonenumberController.text.isNotEmpty &&
        _voterIdController.text.isNotEmpty;
  }

  bool checkConfirmPassword() {
    return _passwordController.text == _cpasswordController.text;
  }

  bool checkEmail() {
    final emailPattern = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    return emailPattern.hasMatch(_emailController.text);
  }

  bool checkNumber() {
    final phonePattern = RegExp(r'^[9]\d{9}$');
    return phonePattern.hasMatch(_phonenumberController.text);
  }

  Future<void> signupDetails() async {
    if (!formValidation()) {
      setState(() {
        _modalText = 'Please provide all the required fields with *';
        _modalVisible = true;
      });
      return;
    }

    if (!checkNumber()) {
      setState(() {
        _modalText = 'Please provide a valid number.';
        _modalVisible = true;
      });
      return;
    }

    if (!checkEmail()) {
      setState(() {
        _modalText = 'Please provide a valid email.';
        _modalVisible = true;
      });
      return;
    }

    if (!checkConfirmPassword()) {
      setState(() {
        _modalText = 'The passwords do not match.';
        _modalVisible = true;
      });
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final article = {
      'fullname': _fullnameController.text,
      'address':
          _addressController.text.isEmpty ? '-' : _addressController.text,
      'phonenumber': _phonenumberController.text.isEmpty
          ? '-'
          : _phonenumberController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
      'voterid': _voterIdController.text,
      'accountstatus': 'pending',
    };

    try {
      final response = await http.post(
        Uri.parse(BaseUrl.baseUrl + 'signup'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: json.encode(article),
      );

      if (response.statusCode == 200) {
        //Navigator.pushNamed(context, 'otpscreen', arguments: article);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(signupDetails: article),
            ));
      } else if (response.statusCode == 201) {
        setState(() {
          _modalText = 'User already exists';
          _modalVisible = true;
        });
      }
    } catch (error) {
      print('Error: $error');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const Text('Sign up to create an account',
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 20),
                  _buildInputField(
                      controller: _fullnameController,
                      hintText: 'Full Name',
                      keyboardType: TextInputType.name,
                      maxLength: 50),
                  _buildInputField(
                      controller: _phonenumberController,
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.phone,
                      maxLength: 10),
                  _buildInputField(
                      controller: _addressController, hintText: 'Address'),
                  _buildInputField(
                      controller: _emailController,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress),
                  _buildInputField(
                      controller: _voterIdController, hintText: 'Voter ID'),
                  _buildPasswordField(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: _eyeStatus,
                      toggleVisibility: () =>
                          setState(() => _eyeStatus = !_eyeStatus)),
                  _buildPasswordField(
                      controller: _cpasswordController,
                      hintText: 'Confirm Password',
                      obscureText: _eyeStatusConfirm,
                      toggleVisibility: () => setState(
                          () => _eyeStatusConfirm = !_eyeStatusConfirm)),
                  const SizedBox(height: 20),
                  MoonFilledButton(
                    onTap: signupDetails,
                    label: const Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
          if (_modalVisible)
            CustomModal(
                visible: _modalVisible,
                modalText: _modalText,
                onClose: () => setState(() => _modalVisible = false)),
        ],
      ),
    );
  }

  Widget _buildInputField(
      {required TextEditingController controller,
      String? hintText,
      TextInputType? keyboardType,
      Widget? leading,
      int? maxLength}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MoonFormTextInput(
        controller: controller,
        validator: (String? value) => value != null && value.length < 5
            ? "The text should be longer than 5 characters."
            : null,
        onTap: () => controller.clear(),
        leading: leading,
        trailing: GestureDetector(
          child: const Icon(MoonIcons.controls_close_small_24_light),
        ),
        keyboardType: keyboardType,
        maxLength: maxLength,
        hintText: hintText,
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    String? hintText,
    required bool obscureText,
    Widget? leading,
    VoidCallback? toggleVisibility, // Updated type here
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MoonFormTextInput(
        controller: controller,
        validator: (String? value) => value != null && value.length < 5
            ? "The text should be longer than 5 characters."
            : null,
        onTap: () => controller.clear(),
        leading: leading,
        trailing: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          onPressed: toggleVisibility, // This is now compatible
        ),
        obscureText: obscureText,
        hintText: hintText,
      ),
    );
  }
}
