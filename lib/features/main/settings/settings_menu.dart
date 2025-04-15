import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          title: context.tr('Settings'),
          leading: [],
        )
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(8),
          OutlineButton(
            leading: const Icon(Icons.display_settings),
            child: const Text("Display Settings"),
            onPressed: () {
              context.go("/main/settings/display-setting");
            },
          ),
          OutlineButton(
            leading: const Icon(Icons.logout),
            child: const Text("Logout"),
            onPressed: () {
              context.go("/");
            },
          )
        ],
      ),
    );
  }
}

class SettingsAppDisplayMenu extends StatelessWidget {
  const SettingsAppDisplayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          title: context.tr('Display Settings'),
          leading: [],
          hasBackButton: true,
        )
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: rp.Consumer(builder: (context, ref, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("This is what you will see"),
              const Gap(8),
              Slider(
                max: 1.5,
                min: 0.5,
                divisions: 10,
                value: SliderValue.single(ref.watch(globalAppScaleNotifierProvider)),
                onChanged: (value) {
                  ref.read(globalAppScaleNotifierProvider.notifier).changeScale(value.value);
                },
              ),
              const Gap(8),
              Text('Value: ${ref.watch(globalAppScaleNotifierProvider)}'),
            ],
          );
        }),
      ),
    );
  }
}
