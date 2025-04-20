import 'dart:io';

import 'package:awaj/core/router.dart';
import 'package:awaj/firebase_options.dart';
import 'package:awaj/local_notification.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

final globalAppScaleNotifierProvider = rp.NotifierProvider<GlobalAppScaleNotifier, double>(GlobalAppScaleNotifier.new);

class GlobalAppScaleNotifier extends rp.Notifier<double> {
  @override
  double build() {
    return 1.0;
  }

  void changeScale(double value) {
    state = value;
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(); // Needed if you use Firebase inside this handler
  print('Handling a background message: ${message.data.toString()}');
}

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );

  // try {
  //   final fcmToken = await FirebaseMessaging.instance
  //       .getToken(vapidKey: "BIanhKtM9gHiIpL-VwNr7ZGFnsKLaUqhH5zF1jWURvQ1Y6QonIgidqfRJVdCKdH5DEZG1XU3nwECWb2KBNyTFag");
  //   print(fcmToken);
  // } catch (err) {
  //   print(err.toString());
  // }

  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initializeDateFormatting('en_US', null);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  try {
    final fcmToken = await FirebaseMessaging.instance
        .getToken(vapidKey: "BErf2hhJL5tQxmxEN3S-nExK5myUxJLckGRx1HoKmXa6EpTtli0DnjPjsag2KVxEzgee3AGOzkUgVXmluFSRdrI");
    print(fcmToken.toString());
  } catch (err) {
    print(err.toString());
  }
  HttpOverrides.global = MyHttpOverrides();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await FirebaseMessaging.instance.subscribeToTopic("all");
  LocalNotificationService.initialize();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('np', 'NP'), Locale('en', 'US')],
      startLocale: Locale('np', 'NP'),
      saveLocale: true,
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en', 'US'),
      child: const rp.ProviderScope(
        child: AwajApp(),
      ),
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
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpen);
    FirebaseMessaging.onMessage.listen(_handleMessage);
  }

  void _handleMessageOpen(RemoteMessage message) {
    print("Message Opened");
  }

  void _handleMessage(RemoteMessage message) {
    print(message.data.toString());

    print(message.messageType);

    if (message.data.isNotEmpty) {
      final title = message.notification?.title ?? 'No Title';
      final body = message.notification?.body ?? 'No Body';
      LocalNotificationService.showNotification(title, body);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _requestNotificationPermission().then((value) {
      if (value) {
        print("Notification Permission Granted");
        setupInteractedMessage();
      } else {
        print("Notification Permission Denied");
      }
    }).catchError((error) {
      print("Error requesting notification permission: $error");
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  // Request permission for notifications
  Future<bool> _requestNotificationPermission() async {
    final status = await Permission.notification.request();
    if (status.isGranted) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShadcnApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Awaj Mobile',
      theme: ThemeData(
        colorScheme: ColorSchemes.lightBlue(),
        radius: 0.15,
      ),
      // Define named routes
      routerConfig: gorouter,
    );
  }
}
