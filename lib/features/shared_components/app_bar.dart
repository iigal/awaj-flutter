import 'package:awaj/db.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pocketbase_server_flutter/pocketbase_server_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppBarWidget extends ConsumerWidget {
  final String title;
  final List<Widget>? leading;
  final bool hasBackButton;
  final bool hasActionButton;
  final bool showServerConfiguration;
  const AppBarWidget(
      {super.key,
      this.showServerConfiguration = false,
      this.hasBackButton = false,
      this.hasActionButton = true,
      this.leading,
      this.title = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
        height: 42,
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
          if (showServerConfiguration && !kIsWeb)
            FutureBuilder<bool?>(
                future: PocketbaseServerFlutter.isRunning,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return IconButton.ghost(
                    icon: Icon(
                      Icons.sync,
                      color: (snapshot.data == null) ? Colors.yellow : (snapshot.data! ? Colors.green : Colors.red),
                    ),
                    onPressed: () {
                      openDrawer(
                        context: context,
                        useSafeArea: false,
                        builder: (context) {
                          return SizedBox(
                            height: 320,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("IP Address: $mobilePocketbase"),
                                  Text("Status: ${snapshot.data == null ? "Unknown" : (snapshot.data! ? "Running" : "Stopped")}"),
                                  Text("Port: 8090"),
                                  Text("Data Path: $mobilePocketbase/pb_data"),
                                  Text("Static Path: $mobilePocketbase/pb_static"),
                                  Text("Hooks Path: $mobilePocketbase/pb_hooks"),
                                  Gap(16),
                                  Row(
                                    children: [
                                      Button.primary(
                                          child: Text("Start"),
                                          onPressed: () async {
                                            await setupPocketBase();
                                            closeDrawer(context);
                                          }),
                                      Gap(12),
                                      Button.destructive(
                                          child: Text("Stop"),
                                          onPressed: () async {
                                            try {
                                              await PocketbaseServerFlutter.stop();
                                            } catch (err) {
                                              print(err.toString());
                                            }
                                            closeDrawer(context);
                                          }),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        position: OverlayPosition.bottom,
                      );
                    },
                    // tooltip: 'Change Language',
                  );
                }),
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
