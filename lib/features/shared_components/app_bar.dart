import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppBarWidget extends ConsumerWidget {
  final String title;
  final List<Widget>? leading;
  final bool hasBackButton;
  const AppBarWidget({super.key, this.hasBackButton = false, this.leading, this.title = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      height: 52,
      trailingGap: 0,
      leading: hasBackButton
          ? [
              IconButton.outline(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => context.pop(),
              ),
              ...leading ?? []
            ]
          : [
              ...leading ??
                  [
                    Avatar(
                      initials: "AS",
                    )
                  ]
            ],
      title: Text(title).medium().bold(),
      trailing: [
        IconButton.ghost(
          icon: const Icon(Icons.language),
          onPressed: () {},
          // tooltip: 'Change Language',
        ),
        Stack(
          children: [
            IconButton.ghost(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () {},
              // tooltip: 'Notifications',
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.destructive,
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(
                  minWidth: 8,
                  minHeight: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
