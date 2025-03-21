import 'package:awaj/components/scaffold_wrapper.dart';
import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/complaints/presentation/complaint_page.dart';
import 'package:awaj/features/home/providers/home_provider.dart';
import 'package:awaj/features/introductions/introduction_page.dart';
import 'package:awaj/features/settings/settings_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomeScreen extends ConsumerWidget {
  final List<(String, HomeScreenPages, Widget, Icon)> pages = [
    (
      "Welcome",
      HomeScreenPages.home,
      const IntroductionPage(),
      const Icon(Icons.home),
    ),
    (
      "Your Issues",
      HomeScreenPages.complaints,
      const ComplaintPage(),
      const Icon(Icons.comment),
    ),
    (
      "Settings",
      HomeScreenPages.settings,
      const SettingsPage(),
      const Icon(Icons.settings),
    ),
  ];

  HomeScreen({super.key});

  NavigationButton buildButton({required String label, required Icon icon}) {
    return NavigationButton(
      style: const ButtonStyle.muted(density: ButtonDensity.icon),
      label: Text(label.toTitleCase),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldWrapper(
        title: pages.firstWhere((value) => value.$2 == ref.watch(homePageControllerProvider)).$1,
        footers: [
          const Divider(),
          NavigationBar(
            index: pages.indexWhere((value) => value.$2 == ref.watch(homePageControllerProvider)),
            onSelected: (value) => ref.read(homePageControllerProvider.notifier).navigateTo(pages[value].$2),
            labelType: NavigationLabelType.all,
            alignment: NavigationBarAlignment.center,
            children: pages.map((element) => buildButton(label: element.$2.name, icon: element.$4)).toList(),
          ),
        ],
        child: pages.firstWhere((value) => value.$2 == ref.watch(homePageControllerProvider)).$3);
  }
}
