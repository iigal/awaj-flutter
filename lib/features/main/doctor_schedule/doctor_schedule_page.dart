import 'package:shadcn_flutter/shadcn_flutter.dart';

class DoctorSchedulePage extends StatelessWidget {
  const DoctorSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(12),
            const Text('Good morning, Dr. Sharma').xLarge().extraBold(),
            const Gap(4),
            const Text('Here\'s your clinical overview for today.').xSmall().muted(),
            const Gap(20),

            // Stats row
            Row(
              children: [
                _buildStatCard(theme, 'TOTAL PATIENTS', '42', Icons.people_outline, 'new arrivals'),
                const Gap(8),
                _buildStatCard(theme, 'ACTIVE CASES', '08', Icons.assignment_outlined, 'critical'),
              ],
            ),
            const Gap(8),
            Row(
              children: [
                _buildStatCard(theme, 'URGENT ALERTS', '03', Icons.warning_amber_rounded, 'pending review',
                    isAlert: true),
                const Gap(8),
                Expanded(child: Container()),
              ],
            ),
            const Gap(20),

            // Today's Timeline
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Today\'s Timeline').large().bold(),
                LinkButton(
                  onPressed: () {},
                  child: const Text('Full Schedule').xSmall(),
                ),
              ],
            ),
            const Gap(12),
            _buildTimelineItem(theme, '09:00', 'Clinical Rounds', 'Ward 4B - Post-surgical patients (Rm 10-15)', Icons.medical_services),
            const Gap(8),
            _buildTimelineItem(theme, '11:00', 'OPD Consultations', 'Outpatient Department - 8 appointments', Icons.event_note),
            const Gap(8),
            _buildTimelineItem(theme, '14:00', 'Case Review Meeting', 'Conference Room B - Multi-disciplinary team', Icons.groups),
            const Gap(20),

            // Active Queue
            const Text('Active Queue').large().bold(),
            const Gap(12),
            _buildPatientQueueItem(theme, 'Arpan Prajapati', '32 yrs', 0),
            const Gap(6),
            _buildPatientQueueItem(theme, 'Ramesh Thapa', '45 yrs', 1),
            const Gap(6),
            _buildPatientQueueItem(theme, 'Sunita Rai', '28 yrs', 2),
            const Gap(24),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(ThemeData theme, String label, String value, IconData icon, String subtitle,
      {bool isAlert = false}) {
    return Expanded(
      child: Card(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w700, letterSpacing: 0.5)).muted(),
            const Gap(6),
            Text(value).x2Large().extraBold(),
            const Gap(4),
            Row(
              children: [
                if (isAlert)
                  Icon(Icons.arrow_upward, size: 12, color: theme.colorScheme.destructive),
                Text(subtitle, style: TextStyle(
                  fontSize: 10,
                  color: isAlert ? theme.colorScheme.destructive : theme.colorScheme.mutedForeground,
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineItem(ThemeData theme, String time, String title, String description, IconData icon) {
    return Card(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 18, color: theme.colorScheme.primary),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title).small().semiBold(),
                const Gap(2),
                Text(description).xSmall().muted(),
              ],
            ),
          ),
          Text(time, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: theme.colorScheme.mutedForeground)),
        ],
      ),
    );
  }

  Widget _buildPatientQueueItem(ThemeData theme, String name, String age, int index) {
    return Card(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          Avatar(initials: Avatar.getInitials(name), size: 36),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name).small().semiBold(),
                Text(age).xSmall().muted(),
              ],
            ),
          ),
          OutlineButton(
            size: ButtonSize.small,
            onPressed: () {},
            child: const Text('Admit').xSmall(),
          ),
        ],
      ),
    );
  }
}
