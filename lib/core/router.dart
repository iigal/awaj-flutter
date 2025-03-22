import 'package:awaj/features/auth/login.dart';
import 'package:awaj/features/auth/signup_screen.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/complaints/presentation/complaint_detail_page.dart';
import 'package:awaj/features/home/home.dart';
import 'package:awaj/features/main/ambulance/main_ambulance.dart';
import 'package:awaj/features/main/health_location/main_health_location.dart';
import 'package:awaj/features/main/main_medical_record.dart';
import 'package:awaj/features/main/main_menu.dart';
import 'package:awaj/features/main/new_routes/pages/main_otp_verify.dart';
import 'package:awaj/features/main/new_routes/pages/main_phone.dart';
import 'package:awaj/features/main/new_routes/main_register.dart';
import 'package:awaj/features/main/new_routes/pages/main_user_detail.dart';
import 'package:awaj/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final gorouter = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: "/main/menu", routes: routes);
});

final List<RouteBase> routes = [
  GoRoute(path: "/", builder: (context, state) => const SplashScreen(), routes: [
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/signup",
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(path: "/forgot_password", builder: (context, state) => const SplashScreen(), routes: []),
    GoRoute(path: "/main", builder: (context, state) => const MainRegisterScreen(), routes: [
      GoRoute(path: "otp-verification", builder: (context, state) => const OTPVerificationScreen(), routes: []),
      GoRoute(path: "phone-verification", builder: (context, state) => const PhoneVerificationScreen(), routes: []),
      GoRoute(path: "user-details", builder: (context, state) => const UserDetailsScreen(), routes: []),
      GoRoute(path: "menu", builder: (context, state) => MobileSizeBox(child: const HealthApp()), routes: [
        GoRoute(path: "health-location", builder: (context, state) => MobileSizeBox(child: const FindHospitalsPage()), routes: []),
        GoRoute(path: "ambulance", builder: (context, state) => MobileSizeBox(child: const AmbulanceServicePage()), routes: []),
        GoRoute(path: "medical-record", builder: (context, state) => MobileSizeBox(child: const MedicalRecordsPage()), routes: []),
      ]),
    ]),
  ]),
  GoRoute(path: "/home", builder: (context, state) => HomeScreen(), routes: [
    GoRoute(
      path: "complaint-detail",
      name: "complaint-detail",
      builder: (context, state) => ComplaintDetailPage(
        complaint: state.extra as Complaints?,
      ),
    )
  ])
];

class MobileSizeBox extends StatelessWidget {
  final Widget child;
  const MobileSizeBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 412,
        height: 915,
        child: child,
      ),
    );
  }
}
