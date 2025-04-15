import 'package:awaj/features/auth/login.dart';
import 'package:awaj/features/auth/signup_screen.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/complaints/presentation/complaint_detail_page.dart';
import 'package:awaj/features/home/home.dart';
import 'package:awaj/features/main/ambulance/main_ambulance.dart';
import 'package:awaj/features/main/health_information/government_announcement.dart';
import 'package:awaj/features/main/health_information/health_information.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:awaj/features/main/health_location/main_health_location.dart';
import 'package:awaj/features/main/main_icons.dart';
import 'package:awaj/features/main/main_medical_record.dart';
import 'package:awaj/features/main/main_menu.dart';
import 'package:awaj/features/main/new_routes/pages/main_otp_verify.dart';
import 'package:awaj/features/main/new_routes/pages/main_phone.dart';
import 'package:awaj/features/main/new_routes/main_register.dart';
import 'package:awaj/features/main/new_routes/pages/main_user_detail.dart';
import 'package:awaj/features/main/settings/settings_menu.dart';
import 'package:awaj/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final branchNavigatorKey01 = GlobalKey<NavigatorState>();
final branchNavigatorKey02 = GlobalKey<NavigatorState>();
final branchNavigatorKey03 = GlobalKey<NavigatorState>();
final branchNavigatorKey04 = GlobalKey<NavigatorState>();
final branchNavigatorKey05 = GlobalKey<NavigatorState>();

NavigationBarAlignment alignment = NavigationBarAlignment.spaceAround;
bool expands = true;
NavigationLabelType labelType = NavigationLabelType.none;
bool customButtonStyle = true;
bool expanded = true;

NavigationItem buildButton(String label, IconData icon) {
  return NavigationItem(
    style: customButtonStyle ? const ButtonStyle.muted(density: ButtonDensity.icon) : null,
    selectedStyle: customButtonStyle ? const ButtonStyle.fixed(density: ButtonDensity.icon) : null,
    label: Text(label),
    child: Icon(icon),
  );
}

final gorouter = GoRouter(navigatorKey: rootNavigatorKey, initialLocation: "/main/menu", routes: routes);

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
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state, navigationShell) {
          return Scaffold(footers: [
            const Divider(),
            NavigationBar(
              alignment: alignment,
              labelType: labelType,
              expanded: expanded,
              expands: expands,
              onSelected: (index) {
                navigationShell.goBranch(index);
              },
              index: navigationShell.currentIndex,
              children: [
                buildButton('Home', BootstrapIcons.house),
                buildButton('Announcements', DHAppStyles.announcementsIcon),
                buildButton('Library', BootstrapIcons.info),
                buildButton('Profile', BootstrapIcons.menuApp),
                buildButton('Settings', Icons.settings),
              ],
            ),
          ], child: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: branchNavigatorKey01,
            routes: [
              GoRoute(path: "menu", builder: (context, state) => const HomePage(), routes: [
                GoRoute(path: "health-location", builder: (context, state) => AppWrapper(child: const FindHospitalsPage()), routes: []),
                GoRoute(path: "ambulance", builder: (context, state) => AppWrapper(child: const AmbulanceServicePage()), routes: []),
                GoRoute(path: "medical-record", builder: (context, state) => AppWrapper(child: const MedicalRecordsPage()), routes: []),
              ]),
            ],
          ),
          StatefulShellBranch(navigatorKey: branchNavigatorKey02, routes: [
            GoRoute(
                path: '/announcements',
                builder: (context, state) => AppWrapper(
                      child: AnnouncementsPage(),
                    ),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) {
                      final announcement = state.extra as Announcement;
                      return AppWrapper(
                        child: AnnouncementDetailPage(announcement: announcement),
                      );
                    },
                  ),
                ]),
          ]),
          StatefulShellBranch(navigatorKey: branchNavigatorKey03, routes: [
            GoRoute(
                path: '/health-tips',
                builder: (context, state) => AppWrapper(
                      child: HealthTipsPage(
                        tips: state.extra as List<HealthTip>,
                      ),
                    ),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) {
                      final tip = state.extra as HealthTip;
                      return AppWrapper(child: HealthTipDetailPage(tip: tip));
                    },
                  ),
                ]),
          ]),
          StatefulShellBranch(
            navigatorKey: branchNavigatorKey04,
            routes: [
              GoRoute(path: "/menu", builder: (context, state) => const HomePage(), routes: [
                GoRoute(path: "health-location", builder: (context, state) => AppWrapper(child: const FindHospitalsPage()), routes: []),
                GoRoute(path: "ambulance", builder: (context, state) => AppWrapper(child: const AmbulanceServicePage()), routes: []),
                GoRoute(path: "medical-record", builder: (context, state) => AppWrapper(child: const MedicalRecordsPage()), routes: []),
              ]),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: branchNavigatorKey05,
            routes: [
              GoRoute(path: "/settings", builder: (context, state) => const SettingsMenu(), routes: [
                GoRoute(
                    path: "display-setting", builder: (context, state) => AppWrapper(child: const SettingsAppDisplayMenu()), routes: []),
              ]),
            ],
          ),
        ],
      )
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

class AppWrapper extends StatelessWidget {
  final Widget child;
  const AppWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
