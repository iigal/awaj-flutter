import 'package:awaj/components/carousel.dart';
import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Carousel(),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MoonFilledButton(
                    buttonSize: MoonButtonSize.sm,
                    onTap: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    label: const Text("Get Started"),
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
