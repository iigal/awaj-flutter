import 'package:shadcn_flutter/shadcn_flutter.dart';

class LabelledFormWidget extends StatelessWidget {
  final String label;
  final Widget child;
  const LabelledFormWidget({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(label),
          const SizedBox(
            height: 4,
          ),
          child,
        ],
      ),
    );
  }
}
