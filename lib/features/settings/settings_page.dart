import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Gap(8),
        OutlineButton(
          leading: const Icon(Icons.logout),
          child: const Text("Logout"),
          onPressed: () {
            context.go("/");
          },
        )
      ],
    );
  }
}
