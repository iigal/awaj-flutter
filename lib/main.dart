import 'package:awaj/core/router.dart';
import 'package:awaj/features/complaints/presentation/complaint_detail_page.dart';
import 'package:awaj/features/home/home.dart';
import 'package:awaj/features/introductions/introduction_page.dart';
import 'package:awaj/features/auth/login.dart';
import 'package:awaj/features/auth/otp_screen.dart';
import 'package:awaj/features/auth/signup_screen.dart';
import 'package:awaj/firebase_options.dart';
import 'package:awaj/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() async {
  // try {
  //   final fcmToken = await FirebaseMessaging.instance
  //       .getToken(vapidKey: "BIanhKtM9gHiIpL-VwNr7ZGFnsKLaUqhH5zF1jWURvQ1Y6QonIgidqfRJVdCKdH5DEZG1XU3nwECWb2KBNyTFag");
  //   print(fcmToken);
  // } catch (err) {
  //   print(err.toString());
  // }
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // try {
  //   final fcmToken = await FirebaseMessaging.instance
  //       .getToken(vapidKey: "BErf2hhJL5tQxmxEN3S-nExK5myUxJLckGRx1HoKmXa6EpTtli0DnjPjsag2KVxEzgee3AGOzkUgVXmluFSRdrI");
  //   print(fcmToken.toString());
  // } catch (err) {
  //   print(err.toString());
  // }
  runApp(
    const ProviderScope(
      child: AwajApp(),
    ),
  );
}

class AwajApp extends StatefulWidget {
  const AwajApp({super.key});

  @override
  State<AwajApp> createState() => _AwajAppState();
}

class _AwajAppState extends State<AwajApp> {
  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    print(message);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    return ShadcnApp.router(
      title: 'Awaj Mobile',
      theme: ThemeData(
        colorScheme: ColorSchemes.lightZinc(),
        radius: 0.5,
      ),
      // Define named routes
      routerConfig: gorouter,
    );
  }
}
