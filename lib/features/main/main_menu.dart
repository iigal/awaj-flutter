import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

// http://182.93.95.238:8084/api/v1

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _hasNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      headers: [
        AppBar(
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://placehold.co/32X32/png',
                  width: 32,
                  height: 32,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Text('Nepal Health'),
            ],
          ),
          trailing: [
            IconButton.ghost(
              icon: const Icon(Icons.language),
              onPressed: () {},
              // tooltip: 'Change Language',
            ),
            Stack(
              children: [
                IconButton.ghost(
                  icon: const Icon(Icons.notifications_outlined),
                  onPressed: () {},
                  // tooltip: 'Notifications',
                ),
                if (_hasNotifications)
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.destructive,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 8,
                        minHeight: 8,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 8),
          ],
        ),
        PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            color: Colors.gray[200],
          ),
        ),
      ],
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _buildProfileCard(),
            ),
            SliverToBoxAdapter(
              child: _buildHealthInfoSection(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
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
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 1.0,
                ),
                delegate: SliverChildListDelegate([
                  _buildServiceCard(
                    context,
                    'National ID',
                    Icons.credit_card,
                    const Color(0xFF0052CC),
                    'Register and manage your National ID',
                    isPriority: true,
                  ),
                  _buildServiceCard(
                    context,
                    'Health ID',
                    Icons.badge,
                    const Color(0xFF00875A),
                    'Access your health identity card',
                    isPriority: true,
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Text(
                  // const Color(0xFF253858),
                  'Health Services',
                ).large().bold(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 0.85,
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
            ),
            SliverToBoxAdapter(
              child: _buildGovernmentAnnouncementSection(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.gray.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Avatar(
                  initials: Avatar.getInitials('Atish Shakya'),
                  size: 64,
                  badge: const AvatarBadge(
                    size: 20,
                    color: Colors.green,
                  ),
                ),
                Gap(32),
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
                          ).bold().lead(),
                          const Gap(8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.gray[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.gray[600],
                              ),
                            ),
                          ),
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
          ),
          const Divider(height: 1),
          Row(
            children: [
              Expanded(
                child: _buildProfileActionButton(
                  'Update Profile',
                  Icons.edit_outlined,
                  Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(12),
              Expanded(
                child: _buildProfileActionButton(
                  'Health ID Card',
                  Icons.badge_outlined,
                  Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ).withPadding(all: 8),
        ],
      ),
    );
  }

  Widget _buildProfileActionButton(String label, IconData icon, Color color) {
    // return SizedBox(height: 32, child: Placeholder());
    return Button.text(
      leading: Icon(icon),
      child: Text(label),
      // icon: Icon(icon),
      onPressed: () {},
    );
    // return ElevatedButton.icon(
    //   onPressed: () {},
    //   icon: Icon(icon, size: 18),
    //   label: Text(label),
    //   style: ElevatedButton.styleFrom(
    //     foregroundColor: color,
    //     backgroundColor: color.withValues(alpha:0.1),
    //     elevation: 0,
    //     padding: const EdgeInsets.symmetric(vertical: 10),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //   ),
    // );
  }

  Widget _buildHealthInfoSection() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.gray.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                //const Color(0xFF253858)
                'Health Information',
              ).medium().bold(),
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
          const SizedBox(height: 12),
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
      ),
    );
  }

  Widget _buildHealthInfoCard(BuildContext context, String title, String description, IconData icon, Color color) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.1)),
      ),
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
              ).large().bold(),
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
    );
  }

  Widget _buildGovernmentAnnouncementSection() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.gray.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
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
                  Icons.campaign_outlined,
                  color: Theme.of(context).colorScheme.destructive,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                //const Color(0xFF253858),
                'Government Announcements',
              ).medium().bold(),
            ],
          ),
          const Gap(26),
          _buildAnnouncementItem(
            'Free Health Checkup Camp',
            'March 25-27, 2025 at Central Hospital Kathmandu',
            DateTime.parse('2025-03-25'),
          ),
          const Divider(height: 24),
          _buildAnnouncementItem(
            'New Health Insurance Policy',
            'Government launches new health insurance policy for all citizens',
            DateTime.parse('2025-03-15'),
          ),
          const SizedBox(height: 16),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('View All Announcements'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementItem(String title, String description, DateTime date) {
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
            '${date.day}/${date.month}',
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
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF253858),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
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
          width: 92,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.gray[600],
            ),
          ).small(),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(),
          ).small().semiBold(),
        ),
      ],
    ).withPadding(bottom: 4);
  }

  Widget _buildServiceCard(BuildContext context, String title, IconData icon, Color color, String description,
      {bool isPriority = false, VoidCallback? onPressed}) {
    return Button.outline(
      onPressed: onPressed,
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
          Gap(12),
          Text(
            //const Color(0xFF253858)
            title,
          ).medium().semiBold().textCenter(),
          Gap(8),
          Text(
            description,
            style: TextStyle(
              color: Colors.gray[600],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).small().textCenter(),
          Gap(8),
          if (isPriority)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Priority',
                style: TextStyle(
                  color: color,
                ),
              ).small().semiBold().textCenter(),
            ),
        ],
      ),
    );
  }

  Widget _buildCompactServiceCard(BuildContext context, String title, IconData icon, Color color, {VoidCallback? onPressed}) {
    return Button.outline(
      onPressed: onPressed,
      // borderRadius: BorderRadius.circular(16),
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
              size: 24,
            ),
          ),
          const Gap(12),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ).medium().semiBold().textCenter(),
        ],
      ),
    );
  }
}
