import 'package:awaj/components/base_url.dart';
import 'package:awaj/components/custom_modal.dart';
import 'package:awaj/components/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// Custom Modal widget
// Custom Theme color constants
 // API base URL constants

class OtpScreen extends StatefulWidget {
  final Map<String, dynamic> signupDetails;

  OtpScreen({required this.signupDetails});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  bool isLoading = false;
  bool modalVisible = false;
  String modalText = '';

  @override
  void initState() {
    super.initState();
  }

  Future<void> verifyOtp() async {
    setState(() {
      isLoading = true;
    });

    final article = {
      "fullname": widget.signupDetails["fullname"],
      "address": widget.signupDetails["address"] ?? "-",
      "phonenumber": widget.signupDetails["phonenumber"] ?? "-",
      "email": widget.signupDetails["email"],
      "password": widget.signupDetails["password"],
      "voterid": widget.signupDetails["voterid"],
      "accountstatus": widget.signupDetails["accountstatus"],
      "otp": otpController.text,
    };

    try {
      final response = await http.post(
        Uri.parse(BaseUrl.baseUrl + 'verify'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(article),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200 && data['status'] == 200) {
        Navigator.pushReplacementNamed(context, '/login');
      } else if (response.statusCode == 401) {
        showModal('Invalid OTP.');
      } else if (response.statusCode == 400) {
        showModal('OTP Expired. Click on resend OTP.');
      }
    } catch (error) {
      showModal('Something went wrong. Please try again later.');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> resendOtp() async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(BaseUrl.baseUrl + 'signup'),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(widget.signupDetails),
      );

      if (response.statusCode == 200) {
        showModal('OTP has been resent successfully.');
      } else if (response.statusCode == 201) {
        showModal('User already exists.');
      }
    } catch (error) {
      showModal('Something went wrong. Please try again later.');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void showModal(String text) {
    setState(() {
      modalText = text;
      modalVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Verification',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Enter the OTP sent to ${widget.signupDetails["phonenumber"]}',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                TextField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your OTP',
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: verifyOtp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeColor.green,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    'Verify',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: resendOtp,
                  child: Text('Resend OTP'),
                ),
              ],
            ),
          ),
          if (isLoading)
            Center(child: CircularProgressIndicator()),
          if (modalVisible)
            CustomModal(
              visible: modalVisible,
              modalText: modalText,
              onClose: () => setState(() => modalVisible = false),
            ),
        ],
      ),
    );
  }
}