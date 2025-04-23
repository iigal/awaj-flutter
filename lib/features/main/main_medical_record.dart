// Ambulance Service Page
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

// Medical Records Page
class MedicalRecordsPage extends StatefulWidget {
  const MedicalRecordsPage({super.key});

  @override
  State<MedicalRecordsPage> createState() => _MedicalRecordsPageState();
}

class _MedicalRecordsPageState extends State<MedicalRecordsPage> with SingleTickerProviderStateMixin {
  final _searchController = TextEditingController();
  final List<String> _filters = ['All', 'Prescriptions', 'Diagnoses', 'Lab Reports', 'Vaccinations'];
  String _selectedFilter = 'All';
  int selectedIndex = 0;
  final List<MedicalRecord> _medicalRecords = [
    MedicalRecord(
      id: 'MR001',
      title: 'Annual Health Checkup',
      date: DateTime.parse('2025-02-15'),
      doctor: 'Dr. Ramesh Sharma',
      hospital: 'Central Hospital',
      type: 'General',
      description: 'Complete blood work, ECG, and general physical examination.',
      hasAttachments: true,
    ),
    MedicalRecord(
      id: 'MR002',
      title: 'COVID-19 Vaccination',
      date: DateTime.parse('2025-01-10'),
      doctor: 'Dr. Sita Gurung',
      hospital: 'City Health Center',
      type: 'Vaccination',
      description: 'COVID-19 booster shot administered.',
      hasAttachments: false,
    ),
    MedicalRecord(
      id: 'MR003',
      title: 'Influenza Treatment',
      date: DateTime.parse('2024-12-05'),
      doctor: 'Dr. Prakash Paudel',
      hospital: 'Nepal Medical College',
      type: 'Prescription',
      description: 'Prescribed medication for influenza.',
      hasAttachments: true,
    ),
    MedicalRecord(
      id: 'MR004',
      title: 'Blood Test',
      date: DateTime.parse('2024-11-20'),
      doctor: 'Dr. Anita Thapa',
      hospital: 'Kathmandu Labs',
      type: 'Lab Report',
      description: 'Complete blood count and lipid profile.',
      hasAttachments: true,
    ),
    MedicalRecord(
      id: 'MR005',
      title: 'Dental Checkup',
      date: DateTime.parse('2024-10-15'),
      doctor: 'Dr. Sunil Bista',
      hospital: 'Smile Dental Clinic',
      type: 'Diagnosis',
      description: 'Routine dental checkup and cleaning.',
      hasAttachments: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.surface,
      headers: [
        AppBarWidget(
          title: 'medicalRecords',
          hasActionButton: true,
        ),
      ],

      child: Column(
        children: [
          TabList(
            index: selectedIndex,
            onChanged: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            children: [
              TabItem(child: Text('RECORDS')),
              TabItem(child: Text('SUMMARY')),
              TabItem(child: Text('SHARED')),
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                _buildRecordsTab(),
                _buildSummaryTab(),
                _buildSharedTab(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRecordsTab() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                placeholder: Text('Search medical records'),
              ),
              const Gap(16),
              SizedBox(
                height: 32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filters.length,
                  itemBuilder: (context, index) {
                    final filter = _filters[index];
                    final isSelected = _selectedFilter == filter;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Chip(
                        style: ButtonStyle(variance: isSelected ? ButtonVariance.primary : ButtonVariance.secondary),
                        leading: isSelected ? Icon(Icons.check, color: Colors.white) : null,
                        onPressed: () {
                          setState(() {
                            _selectedFilter = filter;
                          });
                        },
                        child: Text(context.tr(filter)).xSmall(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: _medicalRecords.length,
            itemBuilder: (context, index) {
              return _buildRecordCard(_medicalRecords[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSummaryCard(),
          const Gap(24),
          _buildHealthMetricsSection(),
          const Gap(24),
          _buildRecentActivitiesSection(),
        ],
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Icon(
            Icons.summarize,
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
          const Gap(12),
          Text(
            'Health Summary',
            style: const TextStyle(
              color: Color(0xFF253858),
            ),
          ).bold(),
        ],
      ),
      const Gap(16),
      Row(
        children: [
          Expanded(
            child: _buildSummaryItem(
              'Blood Type',
              'A+',
              Icons.bloodtype,
              const Color(0xFFFF5630),
            ),
          ),
          Expanded(
            child: _buildSummaryItem(
              'Allergies',
              'None',
              Icons.coronavirus_outlined,
              const Color(0xFF6554C0),
            ),
          ),
        ],
      ),
      const Gap(16),
      Row(
        children: [
          Expanded(
            child: _buildSummaryItem(
              'Height',
              '175 cm',
              Icons.height,
              const Color(0xFF00875A),
            ),
          ),
          Expanded(
            child: _buildSummaryItem(
              'Weight',
              '72 kg',
              Icons.monitor_weight_outlined,
              const Color(0xFF0052CC),
            ),
          ),
        ],
      ),
      const Gap(16),
      const Divider(),
      const Gap(8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Last checkup:',
            style: TextStyle(
              color: Colors.gray.shade700,
            ),
          ).xSmall(),
          Text(
            '15 Feb, 2025',
            style: const TextStyle(
              color: Color(0xFF253858),
            ),
          ).xSmall().bold(),
        ],
      ),
      const Gap(8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Next Recommendation Checkup:',
            style: TextStyle(
              color: Colors.gray.shade700,
            ),
          ).xSmall(),
          Text(
            '15 Feb, 2025',
            style: const TextStyle(
              color: Colors.red,
            ),
          ).xSmall().bold(),
        ],
      ),
    ]));
  }

  Widget _buildRecordCard(MedicalRecord record) {
    // Function to get icon based on record type
    IconData getIcon() {
      switch (record.type) {
        case 'Prescription':
          return Icons.medication_outlined;
        case 'Diagnosis':
          return Icons.medical_services_outlined;
        case 'Lab Report':
          return Icons.science_outlined;
        case 'Vaccination':
          return Icons.vaccines;
        default:
          return Icons.folder_outlined;
      }
    }

    // Function to get color based on record type
    Color getColor() {
      switch (record.type) {
        case 'Prescription':
          return const Color(0xFF00875A);
        case 'Diagnosis':
          return const Color(0xFF0052CC);
        case 'Lab Report':
          return const Color(0xFF6554C0);
        case 'Vaccination':
          return const Color(0xFFFF5630);
        default:
          return const Color(0xFF172B4D);
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Button.card(
        onPressed: () {
          // View record details
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: getColor().withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    getIcon(),
                    color: getColor(),
                    size: 24,
                  ),
                ),
                const Gap(18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        record.title,
                        style: const TextStyle(
                          color: Color(0xFF253858),
                        ),
                      ).bold.medium,
                      Gap(4),
                      Text(
                        record.date.toString().substring(0, 10),
                        style: TextStyle(
                          color: Colors.gray.shade600,
                        ),
                      ).xSmall,
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: getColor().withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    record.type,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: getColor(),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(12),
            const Divider(),
            const Gap(12),
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.gray.shade600,
                ).iconXSmall(),
                const Gap(4),
                Text(
                  record.doctor,
                  style: TextStyle(
                    color: Colors.gray.shade700,
                  ),
                ).xSmall(),
                const Gap(16),
                Icon(
                  Icons.local_hospital_outlined,
                  color: Colors.gray.shade600,
                ).iconXSmall(),
                const Gap(4),
                Expanded(
                  child: Text(
                    record.hospital,
                    style: TextStyle(
                      color: Colors.gray.shade700,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ).xSmall(),
                ),
              ],
            ),
            const Gap(12),
            Text(
              record.description,
              style: const TextStyle(
                color: Color(0xFF505F79),
              ),
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (record.hasAttachments)
                  Row(
                    children: [
                      Icon(
                        Icons.attach_file,
                        color: Colors.gray.shade600,
                      ).iconXSmall(),
                      const Gap(2),
                      Text(
                        'Attachments',
                        style: TextStyle(
                          color: Colors.gray.shade600,
                        ),
                      ).xSmall()
                    ],
                  )
                else
                  const Gap(4),
                Row(
                  children: [
                    IconButton.ghost(
                      icon: const Icon(Icons.share_outlined),
                      onPressed: () {},
                    ),
                    IconButton.ghost(
                      icon: const Icon(Icons.download_outlined),
                      onPressed: () {},
                    ),
                    IconButton.ghost(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryItem(String title, String value, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const Gap(8),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Colors.gray.shade700,
          ),
        ),
        const Gap(4),
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFF253858),
          ),
        ).xSmall().semiBold(),
      ],
    );
  }

  Widget _buildHealthMetricsSection() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Health Metrics',
              style: TextStyle(
                color: const Color(0xFF253858),
              )).bold(),
          const Gap(16),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildHealthMetricItem(
                        'Heart Rate',
                        '72 bpm',
                        Icons.favorite_border,
                        const Color(0xFFFF5630),
                      ),
                    ),
                    Expanded(
                      child: _buildHealthMetricItem(
                        'Blood Pressure',
                        '120/80 mmHg',
                        Icons.monitor_heart_outlined,
                        const Color(0xFF6554C0),
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    Expanded(
                      child: _buildHealthMetricItem(
                        'Cholesterol',
                        '180 mg/dL',
                        Icons.bloodtype,
                        const Color(0xFF00875A),
                      ),
                    ),
                    Expanded(
                      child: _buildHealthMetricItem(
                        'Glucose',
                        '90 mg/dL',
                        Icons.monitor_weight_outlined,
                        const Color(0xFF0052CC),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHealthMetricItem(String title, String value, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const Gap(8),
        Text(
          title,
          style: TextStyle(
            color: Colors.gray.shade700,
          ),
        ).xSmall(),
        const Gap(4),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF253858),
          ),
        ).xSmall().semiBold(),
      ],
    );
  }

  Widget _buildRecentActivitiesSection() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Activities',
              style: TextStyle(
                color: const Color(0xFF253858),
              )).bold(),
          const Gap(16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.gray.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildRecentActivityItem(
                  'Annual Health Checkup',
                  '15 Feb, 2025',
                  Icons.medical_services_outlined,
                  const Color(0xFF00875A),
                ),
                const Gap(16),
                _buildRecentActivityItem(
                  'COVID-19 Vaccination',
                  '10 Jan, 2025',
                  Icons.vaccines,
                  const Color(0xFFFF5630),
                ),
                const Gap(16),
                _buildRecentActivityItem(
                  'Influenza Treatment',
                  '5 Dec, 2024',
                  Icons.medication_outlined,
                  const Color(0xFF6554C0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentActivityItem(String title, String date, IconData icon, Color color) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const Gap(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF253858),
                ),
              ),
              const Gap(4),
              Text(
                date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.gray.shade700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSharedTab() {
    return Center(
      child: Text('Shared Records',
          style: TextStyle(
            color: const Color(0xFF253858),
          )).bold(),
    );
  }
}

class MedicalRecord {
  final String id;
  final String title;
  final DateTime date;
  final String doctor;
  final String hospital;
  final String type;
  final String description;
  final bool hasAttachments;

  MedicalRecord({
    required this.id,
    required this.title,
    required this.date,
    required this.doctor,
    required this.hospital,
    required this.type,
    required this.description,
    required this.hasAttachments,
  });
}
