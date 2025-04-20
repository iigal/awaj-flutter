import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppBarWidget extends ConsumerWidget {
  final String title;
  final List<Widget>? leading;
  final bool hasBackButton;
  final bool hasActionButton;
  const AppBarWidget({super.key, this.hasBackButton = false, this.hasActionButton = true, this.leading, this.title = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
        height: 38,
        trailingGap: 0,
        leading: hasBackButton
            ? [
                IconButton.outline(
                  icon: const Icon(Icons.arrow_back_ios).iconSmall(),
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
        title: Text(context.tr(title)).medium().bold(),
        trailing: [
          IconButton.ghost(
            icon: const Icon(Icons.language),
            onPressed: () async {
              showDropdown(
                context: context,
                builder: (context) {
                  return DropdownMenu(
                    children: [
                      MenuLabel(child: Text('Select Language')),
                      MenuDivider(),
                      MenuButton(
                        child: Text('Nepali'),
                        onPressed: (context) => context.setLocale(const Locale('np', 'NP')),
                      ),
                      MenuButton(
                        child: Text('English'),
                        onPressed: (context) => context.setLocale(const Locale('en', 'US')),
                      ),
                    ],
                  );
                },
              ).future.then((_) {
                print('Closed');
              });
            },
            // tooltip: 'Change Language',
          ),
          if (hasActionButton)
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
        ]);
  }
}
