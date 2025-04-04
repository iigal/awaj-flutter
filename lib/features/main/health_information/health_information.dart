// health_tip_detail_page.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

// models.dart
class HealthTip {
  final String collectionId;
  final String title;
  final String fullSummary;
  final String content;
  final IconData icon;
  final Color color;
  final DateTime created;

  HealthTip({
    required this.collectionId,
    required this.title,
    required this.fullSummary,
    required this.content,
    required this.icon,
    required this.color,
    required this.created,
  });
}

class HealthTipsPage extends StatelessWidget {
  final List<HealthTip> tips;

  const HealthTipsPage({super.key, required this.tips});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: tips.isEmpty
          ? Center(child: Text(context.tr('No health tips available')).muted())
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: tips.length,
              separatorBuilder: (_, __) => const Gap(16),
              itemBuilder: (context, index) {
                final tip = tips[index];
                return Card(
                  child: Button.primary(
                    onPressed: () => context.push('/health-tips/${tip.collectionId}'),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: tip.color.withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(tip.icon, color: tip.color),
                              ),
                              const Gap(12),
                              Expanded(
                                child: Text(context.tr(tip.title)).large().bold(),
                              ),
                            ],
                          ),
                          const Gap(8),
                          Text(context.tr(tip.fullSummary)),
                          const Gap(12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(context.tr(tip.created.toString()).substring(0, 10)).small().muted(),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class HealthTipDetailPage extends StatelessWidget {
  final HealthTip tip;

  const HealthTipDetailPage({super.key, required this.tip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(context.tr('Health Tip')).large().bold(),
      // ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: tip.color.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(tip.icon, size: 32, color: tip.color),
                ),
                const Gap(16),
                Expanded(
                  child: Text(context.tr(tip.title)).xLarge().bold(),
                ),
              ],
            ),
            const Gap(24),
            Text(context.tr(tip.content)),
            const Gap(24),
            const Divider(),
            const Gap(8),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16),
                const Gap(8),
                Text(context.tr('Published: ${tip.created.toString().substring(0, 10)}')).small().muted(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
