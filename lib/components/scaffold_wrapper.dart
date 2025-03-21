import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScaffoldWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget>? footers;
  const ScaffoldWrapper({
    super.key,
    this.title = "",
    required this.child,
    this.footers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          title: title,
        )
      ],
      footers: [...?footers],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: child,
      ),
    );
  }
}
