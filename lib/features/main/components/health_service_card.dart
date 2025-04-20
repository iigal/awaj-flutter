import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HealthServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String description;
  final VoidCallback? onPressed;
  const HealthServiceCard(
      {super.key, required this.title, required this.icon, required this.color, required this.description, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Button.card(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 32,
          ),
          Gap(12),
          Text(
            context.tr(title),
          ).bold().textCenter(),
          Gap(4),
          Text(
            context.tr(description),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).xSmall().light().textCenter(),
        ],
      ),
    );
  }
}

class HealthServiceCompactCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;
  const HealthServiceCompactCard({super.key, required this.title, required this.icon, required this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: color,
              size: 32,
            ),
          ),
          const Gap(12),
          Text(
            context.tr(title),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).xSmall().semiBold().textCenter(),
        ],
      ),
    );
  }
}
