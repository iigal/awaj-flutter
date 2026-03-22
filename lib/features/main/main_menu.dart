import 'package:awaj/db.dart';
import 'package:awaj/features/main/data.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userName = pocketBaseDB.authStore.record?.data['name'] ?? 'User';

    return Scaffold(
      headers: [
        AppBarWidget(
          leading: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(Icons.medical_services, size: 18, color: theme.colorScheme.primary),
              ),
            ),
          ],
          title: 'The Clinical Curator',
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            // Greeting + profile progress
            SliverToBoxAdapter(child: _buildGreetingSection(userName, theme)),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),

            // Alert banner
            SliverToBoxAdapter(child: _buildAlertBanner(theme)),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),

            // Search
            SliverToBoxAdapter(
              child: TextField(
                placeholder: const Text('Search services...'),
                features: [
                  InputFeature.leading(Icon(Icons.search, size: 20, color: theme.colorScheme.mutedForeground)),
                ],
              ),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),

            // Medical Services
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('MEDICAL SERVICES').xSmall().bold(),
                  LinkButton(
                    onPressed: () {},
                    child: const Text('View All').xSmall(),
                  ),
                ],
              ),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 4)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.8,
              ),
              delegate: SliverChildListDelegate([
                _buildServiceTile(theme, Icons.folder_outlined, 'Medical Records', () => context.go("/main/menu/medical-record")),
                _buildServiceTile(theme, Icons.phone_in_talk, 'Telemedicine', () {}),
                _buildServiceTile(theme, Icons.local_hospital_outlined, context.tr(LocaleKeys.findHospitals), () => context.go("/main/menu/health-location")),
                _buildServiceTile(theme, Icons.emergency, 'Ambulance', () => context.go('/main/menu/ambulance')),
              ]),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),

            // Public Health Updates
            SliverToBoxAdapter(
              child: const Text('PUBLIC HEALTH UPDATES').xSmall().bold(),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 6)),
            SliverToBoxAdapter(child: _buildPublicHealthCard(theme)),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),

            // Vital Stats
            SliverToBoxAdapter(
              child: const Text('MY VITAL STATS').xSmall().bold(),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 6)),
            SliverToBoxAdapter(child: _buildVitalStats(theme)),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),

            // Symptom checker CTA
            SliverToBoxAdapter(child: _buildSymptomChecker(theme)),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),

            // Government Announcements
            SliverToBoxAdapter(child: _buildAnnouncementSection(theme)),
            const SliverPadding(padding: EdgeInsets.symmetric(vertical: 24)),
          ],
        ),
      ),
    );
  }

  Widget _buildGreetingSection(String name, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(8),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Hello $name,').large().bold(),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    children: [
                      const Text('Profile completion is ').xSmall().muted(),
                      Text('85% complete', style: TextStyle(color: theme.colorScheme.primary)).xSmall().bold(),
                    ],
                  ),
                ],
              ),
            ),
            Avatar(
              initials: Avatar.getInitials(name),
              size: 42,
              badge: const AvatarBadge(size: 12, color: Colors.green),
            ),
          ],
        ),
        const Gap(8),
        LinearProgressIndicator(
          value: 0.85,
          color: theme.colorScheme.primary,
          backgroundColor: theme.colorScheme.muted,
          minHeight: 4,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }

  Widget _buildAlertBanner(ThemeData theme) {
    return Card(
      padding: const EdgeInsets.all(14),
      filled: true,
      fillColor: theme.colorScheme.destructive.withValues(alpha: 0.05),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.destructive.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.warning_amber_rounded, color: theme.colorScheme.destructive, size: 20),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Dengue Alert').small().bold(),
                const Gap(2),
                const Text('Preventive measures and symptom checklist available').xSmall().muted(),
              ],
            ),
          ),
          OutlineButton(
            size: ButtonSize.small,
            onPressed: () {},
            child: const Text('View Advice').xSmall(),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceTile(ThemeData theme, IconData icon, String label, VoidCallback onPressed) {
    return Button.card(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon, size: 20, color: theme.colorScheme.primary),
          const Gap(10),
          Flexible(child: Text(label).small().semiBold()),
        ],
      ),
    );
  }

  Widget _buildPublicHealthCard(ThemeData theme) {
    return Card(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.1),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.vaccines, size: 36, color: theme.colorScheme.primary),
                  const Gap(8),
                  const Text('National Vaccination Drive 2024').small().bold(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVitalStats(ThemeData theme) {
    return Row(
      children: [
        Expanded(
          child: Card(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, size: 16, color: theme.colorScheme.destructive),
                    const Gap(6),
                    const Text('Heart Rate').xSmall().muted(),
                  ],
                ),
                const Gap(6),
                const Text('72').xLarge().extraBold(),
                const Text('bpm').xSmall().muted(),
              ],
            ),
          ),
        ),
        const Gap(8),
        Expanded(
          child: Card(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.monitor_heart, size: 16, color: theme.colorScheme.primary),
                    const Gap(6),
                    const Text('Blood Pressure').xSmall().muted(),
                  ],
                ),
                const Gap(6),
                const Text('120/80').xLarge().extraBold(),
                const Text('mmHg').xSmall().muted(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSymptomChecker(ThemeData theme) {
    return Card(
      padding: const EdgeInsets.all(16),
      filled: true,
      fillColor: theme.colorScheme.destructive.withValues(alpha: 0.04),
      child: Column(
        children: [
          const Text('Need immediate help?').small().bold(),
          const Gap(4),
          const Text('Our AI clinical assistant is available 24/7 for emergency triage and guidance.').xSmall().muted(),
          const Gap(12),
          DestructiveButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.health_and_safety, size: 16),
                const Gap(8),
                const Text('Start Symptom Checker').small().bold(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementSection(ThemeData theme) {
    return Card(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: theme.colorScheme.destructive.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.campaign, color: theme.colorScheme.destructive, size: 18),
              ),
              const Gap(10),
              const Text('Government Announcements').small().bold(),
            ],
          ),
          const Gap(14),
          if (announcements.isNotEmpty) ...[
            _buildAnnouncementItem(announcements[0], theme),
            if (announcements.length > 1) ...[
              const Gap(10),
              const Divider(),
              const Gap(10),
              _buildAnnouncementItem(announcements[1], theme),
            ],
          ],
          const Gap(14),
          Center(
            child: Button.text(
              onPressed: () => context.go("/main/announcements", extra: announcements),
              child: Text(context.tr('View All Announcements')).small(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementItem(Announcement announcement, ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '${announcement.created.day}/${announcement.created.month}',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: theme.colorScheme.primary),
          ),
        ),
        const Gap(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(announcement.title).small().semiBold(),
              const Gap(2),
              Text(announcement.fullSummary, maxLines: 2, overflow: TextOverflow.ellipsis).xSmall().muted(),
            ],
          ),
        ),
      ],
    );
  }
}
