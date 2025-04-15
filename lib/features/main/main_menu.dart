import 'package:awaj/features/main/data.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:awaj/features/main/main_icons.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

// http://182.93.95.238:8084/api/v1

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _hasNotifications = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      headers: [
        AppBarWidget(leading: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://placehold.co/32X32/png',
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),
        ], title: context.tr("nepalHealth")),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _buildProfileCard(),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
            SliverToBoxAdapter(
              child: _buildHealthInfoSection(),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    // const Color(0xFF253858)
                    'Government Services',
                  ).large().bold(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 4)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 1.25,
              ),
              delegate: SliverChildListDelegate([
                _buildServiceCard(
                  context,
                  'National ID',
                  Icons.credit_card,
                  const Color(0xFF0052CC),
                  'Register and manage your National ID',
                  onPressed: () => context.go("/main/menu/medical-record"),
                ),
                _buildServiceCard(
                  context,
                  'Health ID',
                  Icons.badge,
                  const Color(0xFF00875A),
                  'Access your health identity card',
                  onPressed: () => context.go("/main/menu/medical-record"),
                ),
                _buildServiceCard(
                  context,
                  'Medical Records',
                  Icons.folder_outlined,
                  const Color(0xFF6554C0),
                  'View your complete medical history',
                  onPressed: () => context.go("/main/menu/medical-record"),
                ),
                _buildServiceCard(
                  context,
                  'Find Hospitals',
                  Icons.local_hospital_outlined,
                  const Color(0xFF172B4D),
                  'Locate hospitals and clinics near you',
                  onPressed: () => context.go("/main/menu/health-location"),
                ),
              ]),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
            SliverToBoxAdapter(
              child: Text(
                // const Color(0xFF253858),
                'Health Services',
              ).large().bold(),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 4)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 1.25,
              ),
              delegate: SliverChildListDelegate([
                _buildCompactServiceCard(
                  context,
                  'Insurance',
                  Icons.shield_outlined,
                  const Color(0xFF0052CC),
                ),
                _buildCompactServiceCard(
                  context,
                  'Telemedicine',
                  Icons.phone_in_talk,
                  const Color(0xFF00875A),
                ),
                _buildCompactServiceCard(
                  context,
                  'Vaccination',
                  Icons.vaccines,
                  const Color(0xFF6554C0),
                ),
                _buildCompactServiceCard(
                  context,
                  'Blood Donation',
                  Icons.bloodtype,
                  const Color(0xFFDE350B),
                ),
                _buildCompactServiceCard(
                  context,
                  'Ambulance',
                  Icons.emergency,
                  const Color(0xFFFF5630),
                  onPressed: () => context.go('/main/menu/ambulance'),
                ),
                _buildCompactServiceCard(
                  context,
                  'Health Tips',
                  Icons.health_and_safety_outlined,
                  const Color(0xFF172B4D),
                ),
              ]),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
            SliverToBoxAdapter(
              child: _buildGovernmentAnnouncementSection(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              Avatar(
                initials: Avatar.getInitials('Atish Shakya'),
                size: 60,
                badge: const AvatarBadge(
                  size: 16,
                  color: Colors.green,
                ),
              ),
              Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Atish Shakya',
                          style: TextStyle(
                            color: Colors.gray[800],
                          ),
                        ).textLarge(),
                        const Gap(8),
                        Chip(
                          child: Text('Male').xSmall().bold(),
                        )
                      ],
                    ),
                    const Gap(6),
                    _buildInfoRow('Health ID', 'xx12345xx'),
                    _buildInfoRow('Date of Birth', '2025-03-05'),
                    _buildInfoRow('Mobile No', '+977'),
                  ],
                ),
              ),
            ],
          ),
          Gap(8),
          const Divider(),
          Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProfileActionButton(
                'Update Profile',
                Icons.edit_outlined,
                Theme.of(context).colorScheme.primary,
              ),
              _buildProfileActionButton(
                'Health ID Card',
                Icons.badge_outlined,
                Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileActionButton(String label, IconData icon, Color color) {
    return Button.text(
      leading: Icon(icon),
      child: Text(context.tr(label)).xSmall(),
      // icon: Icon(icon),
      onPressed: () {},
    );
  }

  Widget _buildHealthInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              //const Color(0xFF253858)
              'Health Information',
            ).large().bold(),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const Gap(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildHealthInfoCard(
                context,
                'COVID-19',
                'Stay updated with latest guidelines and information',
                Icons.coronavirus_outlined,
                Color(0xFFFF5630),
              ),
              _buildHealthInfoCard(
                context,
                'Vaccination Schedule',
                'Check your upcoming vaccination dates',
                Icons.event_available_outlined,
                Color(0xFF0052CC),
              ),
              _buildHealthInfoCard(
                context,
                'Health Tips',
                'Daily advice for better health and wellness',
                Icons.tips_and_updates_outlined,
                Color(0xFF00875A),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHealthInfoCard(BuildContext context, String title, String description, IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Card(
        padding: const EdgeInsets.all(16),
        filled: true,
        fillColor: color.withValues(alpha: 0.075),
        borderColor: color.withValues(alpha: 0.15),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 220, maxWidth: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      icon,
                      color: color,
                      size: 20,
                    ),
                  ),
                  const Gap(8),
                  Text(
                    title,
                    style: TextStyle(
                      color: color,
                    ),
                  ).h4().bold(),
                ],
              ),
              Gap(12),
              Text(
                description,
                style: TextStyle(
                  color: Colors.gray[800],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).small(),
              Gap(12),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Learn More',
                  ).medium(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGovernmentAnnouncementSection() {
    return Card(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.destructive.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  DHAppStyles.announcementsIcon,
                  color: Theme.of(context).colorScheme.destructive,
                ),
              ),
              Gap(12),
              Text(context.tr('Government Announcements')).medium().bold(),
            ],
          ),
          const Gap(18),
          _buildAnnouncementItem(announcements[0]),
          const Divider(height: 18),
          _buildAnnouncementItem(announcements[1]),
          const Divider(height: 18),
          Center(
            child: Button.text(
              onPressed: () => context.go("/main/announcements", extra: announcements),
              child: Text(context.tr('View All Announcements')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementItem(Announcement announcement) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '${announcement.created.day}/${announcement.created.month}',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                announcement.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF253858),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                announcement.fullSummary,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.gray[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
          ).xSmall(),
        ),
        Expanded(
          child: Text(
            value,
          ).xSmall().semiBold(),
        ),
      ],
    ).withPadding(bottom: 6);
  }

  Widget _buildServiceCard(BuildContext context, String title, IconData icon, Color color, String description, {VoidCallback? onPressed}) {
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
            title,
          ).bold().textCenter(),
          Gap(4),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).xSmall().light().textCenter(),
        ],
      ),
    );
  }

  Widget _buildCompactServiceCard(BuildContext context, String title, IconData icon, Color color, {VoidCallback? onPressed}) {
    return Column(
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
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ).xSmall().semiBold().textCenter(),
      ],
    );
  }
}
