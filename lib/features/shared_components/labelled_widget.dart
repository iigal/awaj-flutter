import 'package:shadcn_flutter/shadcn_flutter.dart';

class LabelledWidget extends StatelessWidget {
  final String label;
  final Widget child;
  const LabelledWidget({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          child,
        ],
      ),
    );
  }
}
