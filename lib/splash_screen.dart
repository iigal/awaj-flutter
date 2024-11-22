import 'package:shadcn_flutter/shadcn_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlineButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    child: const Text("Get Started"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already Registed to Awaj?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/login");
                        },
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
