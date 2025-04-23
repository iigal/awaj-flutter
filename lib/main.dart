import 'dart:io';

import 'package:awaj/core/router.dart';
import 'package:awaj/db.dart';
import 'package:awaj/firebase_options.dart';
import 'package:awaj/local_notification.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

final globalAppScaleNotifierProvider = rp.NotifierProvider<GlobalAppScaleNotifier, double>(
  GlobalAppScaleNotifier.new,
);

class GlobalAppScaleNotifier extends rp.Notifier<double> {
  @override
  double build() => 1.0;

  void changeScale(double value) => state = value;
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (_, __, ___) => true;
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message: ${message.data}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );

  HttpOverrides.global = MyHttpOverrides();
  usePathUrlStrategy();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  initializeDateFormatting('en_US', null);
  LocalNotificationService.initialize();

  await setupPocketBase();

  await _configurePushNotifications();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('np', 'NP'), Locale('en', 'US')],
      startLocale: const Locale('np', 'NP'),
      saveLocale: true,
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const rp.ProviderScope(child: AwajApp()),
    ),
  );
}

Future<void> _configurePushNotifications() async {
  try {
    if (Platform.isIOS) {
      String? apnsToken = await FirebaseMessaging.instance.getAPNSToken();
      if (apnsToken != null) {
        FirebaseMessaging.instance.subscribeToTopic("all");
      } else {
        await Future.delayed(const Duration(seconds: 2));
        apnsToken = await FirebaseMessaging.instance.getAPNSToken();
        if (apnsToken != null) {
          FirebaseMessaging.instance.subscribeToTopic("all");
        }
      }
    } else {
      await FirebaseMessaging.instance.getToken(
        vapidKey: "BErf2hhJL5tQxmxEN3S-nExK5myUxJLckGRx1HoKmXa6EpTtli0DnjPjsag2KVxEzgee3AGOzkUgVXmluFSRdrI",
      );
      FirebaseMessaging.instance.subscribeToTopic("all");
    }
  } catch (err) {
    print('Push Notification Error: ${err.toString()}');
  }
}

class AwajApp extends StatefulWidget {
  const AwajApp({super.key});

  @override
  State<AwajApp> createState() => _AwajAppState();
}

class _AwajAppState extends State<AwajApp> {
  @override
  void initState() {
    super.initState();
    _requestNotificationPermission().then((granted) {
      if (granted) {
        print("Notification Permission Granted");
        _setupInteractedMessage();
      } else {
        print("Notification Permission Denied");
      }
    }).catchError((e) => print("Permission Error: $e"));
  }

  Future<bool> _requestNotificationPermission() async {
    final status = await Permission.notification.request();
    return status.isGranted;
  }

  Future<void> _setupInteractedMessage() async {
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) _handleMessage(initialMessage);

    FirebaseMessaging.onMessage.listen(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpen);
  }

  void _handleMessageOpen(RemoteMessage message) {
    print("Message Opened: ${message.data}");
  }

  void _handleMessage(RemoteMessage message) {
    print("Message Received: ${message.data}");
    final title = message.notification?.title ?? 'No Title';
    final body = message.notification?.body ?? 'No Body';
    LocalNotificationService.showNotification(title, body);
  }

  @override
  Widget build(BuildContext context) {
    return ShadcnApp.router(
      title: 'Awaj Mobile',
      theme: ThemeData(
        colorScheme: ColorSchemes.lightBlue(),
        radius: 0.15,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: gorouter,
    );
  }
}
