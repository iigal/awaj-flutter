import 'package:awaj/db.dart';
import 'package:awaj/features/main/components/health_service_card.dart';
import 'package:awaj/features/main/data.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:awaj/features/main/main_icons.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/generated/codegen_loader.g.dart';
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ], title: context.tr("nepalHealthApp")),
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
              ),
              delegate: SliverChildListDelegate([
                HealthServiceCard(
                  title: 'National ID',
                  icon: Icons.credit_card,
                  color: const Color(0xFF0052CC),
                  description: 'Register and manage your National ID',
                  onPressed: () => context.go("/main/menu/medical-record"),
                ),
                HealthServiceCard(
                  title: 'Health ID',
                  icon: Icons.badge,
                  color: const Color(0xFF00875A),
                  description: 'Access your health identity card',
                  onPressed: () => context.go("/main/menu/medical-record"),
                ),
                HealthServiceCard(
                  title: 'Medical Records',
                  icon: Icons.folder_outlined,
                  color: const Color(0xFF6554C0),
                  description: 'View your complete medical history',
                  onPressed: () => context.go("/main/menu/medical-record"),
                ),
                HealthServiceCard(
                  title: LocaleKeys.findHospitals,
                  icon: Icons.local_hospital_outlined,
                  color: const Color(0xFF172B4D),
                  description: 'Locate hospitals and clinics near you',
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
                childAspectRatio: 1,
              ),
              delegate: SliverChildListDelegate([
                HealthServiceCompactCard(
                  title: LocaleKeys.insurance,
                  icon: Icons.shield_outlined,
                  color: const Color(0xFF0052CC),
                ),
                HealthServiceCompactCard(
                  title: LocaleKeys.telemedicine,
                  icon: Icons.phone_in_talk,
                  color: const Color(0xFF00875A),
                ),
                HealthServiceCompactCard(
                  title: LocaleKeys.vaccination,
                  icon: Icons.vaccines,
                  color: const Color(0xFF6554C0),
                ),
                HealthServiceCompactCard(
                  title: LocaleKeys.bloodDonation,
                  icon: Icons.bloodtype,
                  color: const Color(0xFFDE350B),
                ),
                HealthServiceCompactCard(
                  title: LocaleKeys.ambulance_ambulance,
                  icon: Icons.emergency,
                  color: const Color(0xFFFF5630),
                  onPressed: () => context.go('/main/menu/ambulance'),
                ),
                HealthServiceCompactCard(
                  title: LocaleKeys.healthTips,
                  icon: Icons.health_and_safety_outlined,
                  color: const Color(0xFF172B4D),
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
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        children: [
          Row(
            children: [
              Avatar(
                initials: Avatar.getInitials(pocketBaseDB.authStore.record!.data['name'] ?? 'User'),
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
                          pocketBaseDB.authStore.record!.data['name'] ?? 'User',
                          style: TextStyle(
                            color: Colors.gray[800],
                          ),
                        ).textLarge(),
                        const Gap(8),
                        Chip(
                          child: Text(
                            pocketBaseDB.authStore.record!.data['gender'] ?? 'Unknown',
                          ).xSmall().bold(),
                        )
                      ],
                    ),
                    const Gap(6),
                    _buildInfoRow('Username', pocketBaseDB.authStore.record!.data['username'] ?? 'Unknown'),
                    _buildInfoRow('Health ID', 'xx12345xx'),
                    _buildInfoRow('Date of Birth',
                        DateFormat('yyyy-MM-dd').format(DateTime.parse(pocketBaseDB.authStore.record?.data['dateOfBirth']))),
                    _buildInfoRow('Mobile No', pocketBaseDB.authStore.record!.data['phoneNumber'].toString() ?? '+977-1234567890'),
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
      leading: Icon(icon).iconSmall(),
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
              SizedBox(
                height: 42,
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).light().small(),
              ),
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
}
