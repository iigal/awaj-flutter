class MockAPI {
  static Future<bool> verifyNID(String nid) async {
    await Future.delayed(Duration(seconds: 2));
    return nid == '123456789'; // Mock successful verification
  }

  static Future<bool> sendOTP(String phone) async {
    await Future.delayed(Duration(seconds: 2));
    return true; // Mock OTP sent successfully
  }

  static Future<bool> verifyOTP(String otp) async {
    await Future.delayed(Duration(seconds: 2));
    return otp == '1234'; // Mock OTP verification
  }
}
