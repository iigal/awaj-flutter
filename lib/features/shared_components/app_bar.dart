import 'package:awaj/core/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppBarWidget extends ConsumerWidget {
  final String title;
  const AppBarWidget({super.key, this.title = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      leading: ref.read(gorouter).canPop()
          ? [
              IconButton.outline(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => ref.read(gorouter).pop(),
              ),
            ]
          : [
              const Avatar(
                initials: "AS",
              )
            ],
      title: Text(title).x2Large().bold(),
      trailing: [
        IconButton.secondary(
          icon: const Icon(Icons.notifications),
          onPressed: () => {},
        ),
      ],
    );
  }
}
