import 'package:awaj/components/scaffold_wrapper.dart';
import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/complaints/presentation/complaint_page.dart';
import 'package:awaj/features/home/providers/home_provider.dart';
import 'package:awaj/features/introductions/introduction_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomeScreen extends ConsumerWidget {
  final List<(HomeScreenPages, Widget, Icon)> pages = [
    (
      HomeScreenPages.home,
      const IntroductionPage(),
      const Icon(Icons.home),
    ),
    (
      HomeScreenPages.complaints,
      const ComplaintPage(),
      const Icon(Icons.comment),
    ),
  ];

  HomeScreen({super.key});

  NavigationButton buildButton({required String label, required Icon icon}) {
    return NavigationButton(
      style: const ButtonStyle.muted(density: ButtonDensity.icon),
      selectedStyle: const ButtonStyle.fixed(density: ButtonDensity.icon),
      label: Text(label.toTitleCase),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldWrapper(footers: [
      const Divider(),
      NavigationBar(
        index: pages.indexWhere((value) => value.$1 == ref.watch(homePageControllerProvider)),
        onSelected: (value) => ref.read(homePageControllerProvider.notifier).navigateTo(pages[value].$1),
        labelType: NavigationLabelType.all,
        alignment: NavigationBarAlignment.center,
        children: pages.map((element) => buildButton(label: element.$1.name, icon: element.$3)).toList(),
      ),
    ], child: pages.firstWhere((value) => value.$1 == ref.watch(homePageControllerProvider)).$2);
  }
}
