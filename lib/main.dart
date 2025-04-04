import 'dart:io';

import 'package:awaj/core/router.dart';
import 'package:awaj/features/auth/providers/auth_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
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
  HttpOverrides.global = MyHttpOverrides();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('np', 'NP'), Locale('en', 'US')],
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
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    context.setLocale(Locale('np', 'NP'));
  }

  @override
  Widget build(BuildContext context) {
    return rp.Consumer(builder: (context, ref, _) {
      ref.watch(authProviderProvider);
      return ShadcnApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Awaj Mobile',
        theme: ThemeData(
          colorScheme: ColorSchemes.lightZinc(),
          radius: 0.5,
        ),
        // Define named routes
        routerConfig: ref.watch(gorouter),
      );
    });
  }
}
