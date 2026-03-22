import 'package:shadcn_flutter/shadcn_flutter.dart';

class PatientManagementPage extends StatefulWidget {
  const PatientManagementPage({super.key});

  @override
  State<PatientManagementPage> createState() => _PatientManagementPageState();
}

class _PatientManagementPageState extends State<PatientManagementPage> {
  final _searchController = TextEditingController();
  int _selectedTab = 0;
  static const _tabs = ['All Patients', 'Assigned Patients'];

  final _patients = [
    _MockPatient(name: 'Sunita Rajbhandari', age: 45, visits: 12, status: 'Active'),
    _MockPatient(name: 'Bikash Shrestha', age: 32, visits: 5, status: 'Active'),
    _MockPatient(name: 'Ram Bahadur KC', age: 67, visits: 23, status: 'Critical'),
    _MockPatient(name: 'Anita Tamang', age: 28, visits: 3, status: 'Active'),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(12),
          const Text('Patient Directory').xLarge().extraBold(),
          const Gap(4),
          const Text('Manage clinical histories, assigned patients, records, and access all patient details.').xSmall().muted(),
          const Gap(16),

          // New Patient button
          PrimaryButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.person_add, size: 16),
                const Gap(8),
                const Text('New Patient').bold(),
              ],
            ),
          ),
          const Gap(12),

          // Search
          TextField(
            controller: _searchController,
            placeholder: const Text('Search by name, ID, or condition...'),
            features: [
              InputFeature.leading(Icon(Icons.search, size: 20, color: theme.colorScheme.mutedForeground)),
            ],
          ),
          const Gap(12),

          // Tabs
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: theme.colorScheme.muted,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: List.generate(_tabs.length, (i) {
                final selected = _selectedTab == i;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedTab = i),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: selected ? theme.colorScheme.card : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: selected
                            ? [BoxShadow(color: theme.colorScheme.foreground.withValues(alpha: 0.04), blurRadius: 4)]
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          _tabs[i],
                          style: TextStyle(
                            color: selected ? theme.colorScheme.primary : theme.colorScheme.mutedForeground,
                            fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const Gap(8),
          Text('${_patients.length} PATIENTS ACTIVE', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600, letterSpacing: 0.5)).muted(),
          const Gap(8),

          // Patient list
          Expanded(
            child: ListView.separated(
              itemCount: _patients.length,
              separatorBuilder: (_, _) => const Gap(8),
              itemBuilder: (context, index) => _buildPatientCard(_patients[index], theme),
            ),
          ),

          // Clinical updates footer
          const Gap(12),
          _buildClinicalUpdates(theme),
          const Gap(16),
        ],
      ),
    );
  }

  Widget _buildPatientCard(_MockPatient patient, ThemeData theme) {
    final isCritical = patient.status == 'Critical';

    return Card(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            children: [
              Avatar(initials: Avatar.getInitials(patient.name), size: 42),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(patient.name).semiBold(),
                    const Gap(2),
                    Row(
                      children: [
                        Icon(Icons.event, size: 12, color: theme.colorScheme.mutedForeground),
                        const Gap(4),
                        Text('${patient.visits} visits').xSmall().muted(),
                        const Gap(12),
                        Icon(Icons.person, size: 12, color: theme.colorScheme.mutedForeground),
                        const Gap(4),
                        Text('${patient.age} yrs').xSmall().muted(),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: isCritical
                      ? theme.colorScheme.destructive.withValues(alpha: 0.08)
                      : theme.colorScheme.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  patient.status,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: isCritical ? theme.colorScheme.destructive : theme.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: OutlineButton(
                  size: ButtonSize.small,
                  onPressed: () {},
                  child: const Text('File History').xSmall(),
                ),
              ),
              const Gap(8),
              Expanded(
                child: PrimaryButton(
                  size: ButtonSize.small,
                  onPressed: () {},
                  child: const Text('Admit/ress').xSmall(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildClinicalUpdates(ThemeData theme) {
    return Card(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Clinical Updates').small().bold(),
          const Gap(8),
          LinearProgressIndicator(
            value: 0.82,
            color: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.muted,
            minHeight: 6,
            borderRadius: BorderRadius.circular(4),
          ),
          const Gap(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('82%').small().bold(),
              const Text('Documentation compliance rate').xSmall().muted(),
            ],
          ),
        ],
      ),
    );
  }
}

class _MockPatient {
  final String name;
  final int age;
  final int visits;
  final String status;

  _MockPatient({required this.name, required this.age, required this.visits, required this.status});
}
