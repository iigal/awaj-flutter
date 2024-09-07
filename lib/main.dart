import 'package:awaj/complains/complaint_details.dart';
import 'package:awaj/complains/latest_complaints.dart';
import 'package:awaj/global_context_provider.dart';
import 'package:awaj/home.dart';
import 'package:awaj/home_page.dart';
import 'package:awaj/login/login.dart';
import 'package:awaj/login/otp_screen.dart';
import 'package:awaj/login/signup_screen.dart';
import 'package:awaj/profile/profile.dart';
import 'package:awaj/splash_screen.dart';
import 'package:awaj/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GlobalProvider(),
      child: AwajApp(),
    ),
  );
}

class AwajApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awaj Mobile',
      theme: lightTheme,
      // Define named routes
      routes: {
        '/splash':(context) => const SplashScreen(),
        '/': (context) => const HomePage(), // Root route
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/signup': (context) => SignUpScreen(),
        '/otpscreen': (context) => OtpScreen(
              signupDetails: {},
            ),
        '/complaintDetails': (context) => ComplaintDetails(item: {}, date: ""),
        '/latestComplaints': (context) => LatestComplaints(),
      },
      initialRoute: '/splash',
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Welcome to Awaj Mobile'),
//             MaterialButton(
//               onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => LoginScreen(),
//               )),
//               child: Text("Login"),
//             ),
//             MaterialButton(
//               onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => SignUpScreen(),
//               )),
//               child: Text("SignUp"),
//             ),
//             MaterialButton(
//               onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => ProfileScreen(),
//               )),
//               child: Text("Profile"),
//             ),
//             MaterialButton(
//               onPressed: () => Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => LatestComplaints(),
//               )),
//               child: Text("Latest Complaints"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//}

