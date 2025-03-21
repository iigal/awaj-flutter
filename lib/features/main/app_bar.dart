import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: [
        OutlineButton(
          density: ButtonDensity.icon,
          onPressed: () => context.pop(),
          child: const Icon(Icons.arrow_back),
        ),
      ],
    );
  }
}
