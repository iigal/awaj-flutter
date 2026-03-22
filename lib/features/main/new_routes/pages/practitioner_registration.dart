import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PractitionerRegistrationPage extends StatelessWidget {
  PractitionerRegistrationPage({super.key});

  final _nameKey = FormKey<String>('fullName');
  final _medicalIdKey = FormKey<String>('medicalId');
  final _specializationKey = FormKey<String>('specialization');
  final _facilityKey = FormKey<String>('facility');
  final _emailKey = FormKey<String>('workEmail');

  static const _specializations = [
    'General Medicine',
    'Cardiology',
    'Pediatrics',
    'Neurology',
    'Orthopedics',
  ];

  void _showSuccess(BuildContext context) {
    showToast(
      context: context,
      builder: (context, overlay) => SurfaceCard(
        child: Basic(
          title: const Text('Registration submitted for verification'),
          trailing: PrimaryButton(
            size: ButtonSize.small,
            onPressed: () {
              overlay.close();
              context.pop();
            },
            child: const Text('OK'),
          ),
          trailingAlignment: Alignment.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      headers: [
        AppBar(
          leading: [
            IconButton.ghost(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
          ],
          title: const Text('Practitioner Registration').semiBold(),
        ),
      ],
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Info banner
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info, color: theme.colorScheme.primary, size: 20),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Identity Synchronisation').small().semiBold(),
                            const Gap(4),
                            const Text(
                              'Registering as a practitioner automatically creates a user/patient FHIR-based account too. This ensures a unified medical history within the national health ecosystem.',
                            ).xSmall().muted(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(24),

                // Main form card
                Card(
                  padding: const EdgeInsets.all(24),
                  child: Form(
                    onSubmit: (context, values) async {
                      await Future.delayed(const Duration(milliseconds: 500));
                      if (context.mounted) _showSuccess(context);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text('Professional Credentials').x2Large().extraBold(),
                        const Gap(8),
                        const Text('Please provide your official medical registration details for verification.').small().muted(),
                        const Gap(24),

                        // Full Name
                        FormField(
                          key: _nameKey,
                          label: const Text('FULL NAME').xSmall().bold(),
                          validator: const LengthValidator(min: 2),
                          child: const TextField(
                            placeholder: Text('Dr. Samir K. Shrestha'),
                          ),
                        ),
                        const Gap(16),

                        // Medical ID + Specialization row
                        LayoutBuilder(
                          builder: (context, constraints) {
                            if (constraints.maxWidth > 480) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: FormField(
                                      key: _medicalIdKey,
                                      label: const Text('MEDICAL ID/LICENSE NUMBER').xSmall().bold(),
                                      validator: const LengthValidator(min: 3),
                                      child: const TextField(
                                        placeholder: Text('NMC-XXXXX'),
                                      ),
                                    ),
                                  ),
                                  const Gap(16),
                                  Expanded(child: _buildSpecializationField()),
                                ],
                              );
                            }
                            return Column(
                              children: [
                                FormField(
                                  key: _medicalIdKey,
                                  label: const Text('MEDICAL ID/LICENSE NUMBER').xSmall().bold(),
                                  validator: const LengthValidator(min: 3),
                                  child: const TextField(
                                    placeholder: Text('NMC-XXXXX'),
                                  ),
                                ),
                                const Gap(16),
                                _buildSpecializationField(),
                              ],
                            );
                          },
                        ),
                        const Gap(16),

                        // Healthcare Facility
                        FormField(
                          key: _facilityKey,
                          label: const Text('HEALTHCARE FACILITY').xSmall().bold(),
                          validator: const LengthValidator(min: 3),
                          child: TextField(
                            placeholder: const Text('e.g. Tribhuvan University Teaching Hospital'),
                            features: [
                              InputFeature.leading(
                                Icon(Icons.local_hospital, size: 18, color: theme.colorScheme.mutedForeground),
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),

                        // Work Email
                        FormField(
                          key: _emailKey,
                          label: const Text('WORK EMAIL').xSmall().bold(),
                          validator: const LengthValidator(min: 5),
                          child: const TextField(
                            placeholder: Text('name@hospital.org.np'),
                          ),
                        ),
                        const Gap(20),

                        // Verification notice
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.muted,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.verified_user_outlined, size: 18, color: theme.colorScheme.mutedForeground),
                              const Gap(10),
                              Expanded(
                                child: const Text(
                                  'Your credentials will be verified against the Nepal Medical Council database. This process usually takes 24-48 hours.',
                                ).xSmall().muted(),
                              ),
                            ],
                          ),
                        ),
                        const Gap(20),

                        // Submit button
                        SubmitButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Submit for Verification').bold(),
                              const Gap(8),
                              const Icon(Icons.arrow_forward, size: 18),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(24),

                // Security bento grid
                LayoutBuilder(
                  builder: (context, constraints) {
                    final cards = [
                      _buildInfoCard(
                        theme,
                        Icons.security,
                        'Privacy First',
                        'All professional data is encrypted and handled according to the National Health Data Privacy Guidelines.',
                      ),
                      _buildInfoCard(
                        theme,
                        Icons.account_tree,
                        'Unified ID',
                        'Access both your clinical dashboard and personal health records with a single set of credentials.',
                      ),
                    ];
                    if (constraints.maxWidth > 480) {
                      return Row(
                        children: [
                          Expanded(child: cards[0]),
                          const Gap(12),
                          Expanded(child: cards[1]),
                        ],
                      );
                    }
                    return Column(
                      children: [
                        cards[0],
                        const Gap(12),
                        cards[1],
                      ],
                    );
                  },
                ),
                const Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSpecializationField() {
    return FormField(
      key: _specializationKey,
      label: const Text('SPECIALIZATION').xSmall().bold(),
      child: Select<String>(
        placeholder: const Text('Select specialization'),
        itemBuilder: (context, value) => Text(value),
        onChanged: (value) {},
        popup: SelectPopup(
          items: SelectItemList(
            children: _specializations
                .map((s) => SelectItemButton(value: s, child: Text(s)))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(ThemeData theme, IconData icon, String title, String description) {
    return Card(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: theme.colorScheme.primary, size: 22),
          const Gap(10),
          Text(title).small().bold(),
          const Gap(6),
          Text(description).xSmall().muted(),
        ],
      ),
    );
  }
}
