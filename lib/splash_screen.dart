import 'package:awaj/features/auth/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authProviderProvider, (prev, next) {
      if (next is AsyncData) {
        if (next.value != null) {
          context.go("/home");
        }
      }
    });
    return Scaffold(
      child: ref.watch(authProviderProvider).isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
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
                            context.go("/signup");
                          },
                          child: const Text("Get Started"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already Registed to Awaj?"),
                            TextButton(
                              onPressed: () {
                                context.go("/login");
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
