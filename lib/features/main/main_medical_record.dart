import 'package:shadcn_flutter/shadcn_flutter.dart';

class MedicalRecordsPage extends StatefulWidget {
  const MedicalRecordsPage({super.key});

  @override
  State<MedicalRecordsPage> createState() => _MedicalRecordsPageState();
}

class _MedicalRecordsPageState extends State<MedicalRecordsPage> {
  final _searchController = TextEditingController();
  int _selectedTab = 0;
  static const _tabs = ['All', 'Prescriptions', 'Labs'];

  final List<MedicalRecord> _records = [
    MedicalRecord(
      id: 'MR001',
      title: 'Full Lipid Panel',
      date: DateTime(2023, 10, 24),
      doctor: 'Dr. Aris Thorne',
      type: RecordType.lab,
      resultLabel: 'LDL Cholesterol',
      resultValue: '142',
      resultUnit: 'mg/dL',
      resultStatus: ResultStatus.high,
      referenceRange: '<100',
      progressPercent: 0.75,
    ),
    MedicalRecord(
      id: 'MR002',
      title: 'Amoxicillin',
      date: DateTime(2023, 10, 18),
      doctor: 'Dr. Ramesh Sharma',
      type: RecordType.prescription,
      dosage: '500 mg x 3x Day',
      duration: '10 Days Total',
      resultStatus: ResultStatus.active,
    ),
    MedicalRecord(
      id: 'MR003',
      title: 'Chest X-Ray',
      date: DateTime(2023, 9, 15),
      doctor: 'Dr. Maya Gurung',
      type: RecordType.lab,
      resultLabel: 'Status',
      resultValue: 'Normal',
      resultUnit: '',
      resultStatus: ResultStatus.normal,
      referenceRange: 'No abnormalities',
      progressPercent: 0.3,
    ),
    MedicalRecord(
      id: 'MR004',
      title: 'Influenza Vaccine',
      date: DateTime(2023, 8, 22),
      doctor: 'Dr. Sita Paudel',
      type: RecordType.prescription,
      dosage: 'Single dose',
      duration: 'Completed',
      resultStatus: ResultStatus.normal,
    ),
  ];

  List<MedicalRecord> get _filteredRecords {
    if (_selectedTab == 0) return _records;
    if (_selectedTab == 1) return _records.where((r) => r.type == RecordType.prescription).toList();
    return _records.where((r) => r.type == RecordType.lab).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const Text('Medical Records').xLarge().extraBold(),
          const Gap(4),
          const Text('Comprehensive access to your clinical diagnostic history and medication documentation.').xSmall().muted(),
          const Gap(16),

          // Search + filter
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  placeholder: const Text('Search records, doctors, or results...'),
                  features: [
                    InputFeature.leading(Icon(Icons.search, size: 20, color: theme.colorScheme.mutedForeground)),
                  ],
                ),
              ),
              const Gap(8),
              IconButton.outline(
                onPressed: () {},
                icon: const Icon(Icons.tune, size: 18),
              ),
            ],
          ),
          const Gap(12),

          // Tab navigation
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
          const Gap(12),

          // Records list
          Expanded(
            child: ListView.separated(
              itemCount: _filteredRecords.length,
              separatorBuilder: (_, __) => const Gap(10),
              itemBuilder: (context, index) => _buildRecordCard(_filteredRecords[index], theme),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecordCard(MedicalRecord record, ThemeData theme) {
    final isLab = record.type == RecordType.lab;
    final isPrescription = record.type == RecordType.prescription;

    return Card(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  isLab ? Icons.biotech : Icons.medication,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
              ),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(record.title).bold(),
                    Text(record.doctor).xSmall().muted(),
                  ],
                ),
              ),
            ],
          ),
          const Gap(12),

          // Result section (lab) or dosage section (prescription)
          if (isLab && record.resultLabel != null) ...[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.muted.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: theme.colorScheme.border.withValues(alpha: 0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(record.resultLabel!, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w700, letterSpacing: 0.5)).muted(),
                          const Gap(2),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                record.resultValue!,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                  color: record.resultStatus == ResultStatus.high
                                      ? theme.colorScheme.destructive
                                      : theme.colorScheme.foreground,
                                ),
                              ),
                              const Gap(4),
                              Text(record.resultUnit ?? '', style: const TextStyle(fontSize: 9)).muted(),
                            ],
                          ),
                        ],
                      ),
                      if (record.resultStatus == ResultStatus.high)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.destructive.withValues(alpha: 0.05),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'HIGH',
                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700, color: theme.colorScheme.destructive),
                          ),
                        ),
                    ],
                  ),
                  if (record.progressPercent != null) ...[
                    const Gap(8),
                    LinearProgressIndicator(
                      value: record.progressPercent!,
                      backgroundColor: theme.colorScheme.muted,
                      color: record.resultStatus == ResultStatus.high
                          ? theme.colorScheme.destructive
                          : theme.colorScheme.primary,
                      minHeight: 4,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    const Gap(6),
                    Text(
                      'Reference Range: ${record.referenceRange}',
                      style: const TextStyle(fontSize: 9),
                    ).muted(),
                  ],
                ],
              ),
            ),
          ],

          if (isPrescription) ...[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.muted.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('DOSAGE', style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700, letterSpacing: 0.5)),
                        const Gap(2),
                        Text(record.dosage ?? '').small().semiBold(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('DURATION', style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700, letterSpacing: 0.5)),
                        const Gap(2),
                        Text(record.duration ?? '').small().semiBold(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          const Gap(12),

          // Footer
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: theme.colorScheme.muted,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: theme.colorScheme.border),
                ),
                child: Text(
                  isLab ? 'Lab Report' : 'Prescription',
                  style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                _formatDate(record.date),
                style: const TextStyle(fontSize: 9),
              ).muted(),
            ],
          ),
          const Gap(10),

          // Action buttons
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  size: ButtonSize.small,
                  onPressed: () {},
                  child: Text(isLab ? 'View Results' : 'View Prescription').xSmall().bold(),
                ),
              ),
              const Gap(8),
              IconButton.outline(
                size: ButtonSize.small,
                onPressed: () {},
                icon: const Icon(Icons.download, size: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }
}

enum RecordType { lab, prescription }

enum ResultStatus { normal, high, active }

class MedicalRecord {
  final String id;
  final String title;
  final DateTime date;
  final String doctor;
  final RecordType type;
  final String? resultLabel;
  final String? resultValue;
  final String? resultUnit;
  final ResultStatus resultStatus;
  final String? referenceRange;
  final double? progressPercent;
  final String? dosage;
  final String? duration;

  MedicalRecord({
    required this.id,
    required this.title,
    required this.date,
    required this.doctor,
    required this.type,
    this.resultLabel,
    this.resultValue,
    this.resultUnit,
    this.resultStatus = ResultStatus.normal,
    this.referenceRange,
    this.progressPercent,
    this.dosage,
    this.duration,
  });
}
