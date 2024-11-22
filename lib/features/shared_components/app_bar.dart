import 'package:awaj/core/router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: gorouter.canPop()
          ? [
              IconButton.outline(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => gorouter.pop(),
              ),
            ]
          : [
              const Avatar(
                initials: "AS",
              )
            ],
      title: const Text("Title").x2Large().bold(),
      trailing: [
        IconButton.secondary(
          icon: const Icon(Icons.notifications),
          onPressed: () => {},
        ),
      ],
    );
  }
}
