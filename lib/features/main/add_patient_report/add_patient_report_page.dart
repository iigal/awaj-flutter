import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AddPatientReportPage extends StatelessWidget {
  AddPatientReportPage({super.key});

  final _diagnosisKey = FormKey<String>('diagnosis');
  final _notesKey = FormKey<String>('notes');
  final _treatmentKey = FormKey<String>('treatment');

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
          title: const Text('Clinical Report Entry').semiBold(),
          trailing: [
            LinkButton(
              onPressed: () {},
              child: Text('New Clinical Record', style: TextStyle(color: theme.colorScheme.primary)).xSmall(),
            ),
          ],
        ),
      ],
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Form(
              onSubmit: (context, values) async {
                await Future.delayed(const Duration(milliseconds: 500));
                if (context.mounted) {
                  showToast(
                    context: context,
                    builder: (ctx, overlay) => SurfaceCard(
                      child: Basic(
                        title: const Text('Report saved to registry'),
                        trailing: PrimaryButton(
                          size: ButtonSize.small,
                          onPressed: () => overlay.close(),
                          child: const Text('OK'),
                        ),
                        trailingAlignment: Alignment.center,
                      ),
                    ),
                  );
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Patient info card
                  Card(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Avatar(initials: 'ST', size: 48),
                        const Gap(14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Siddhartha Thapa').semiBold(),
                              const Gap(2),
                              const Text('Patient ID: NP-HID-54321').xSmall().muted(),
                              const Gap(6),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.muted,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text('32 Yrs', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                                  ),
                                  const Gap(6),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary.withValues(alpha: 0.08),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text('#Priority', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: theme.colorScheme.primary)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),

                  // Attachments section
                  Card(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.attach_file, size: 16, color: theme.colorScheme.mutedForeground),
                            const Gap(6),
                            const Text('Attachments & Diagnostic Imagery').small().semiBold(),
                          ],
                        ),
                        const Gap(12),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 28),
                            decoration: BoxDecoration(
                              border: Border.all(color: theme.colorScheme.border, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.cloud_upload_outlined, size: 32, color: theme.colorScheme.mutedForeground),
                                const Gap(8),
                                const Text('Drag and drop medical files or').xSmall().muted(),
                                LinkButton(
                                  onPressed: () {},
                                  child: const Text('Select a file').xSmall(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),

                  // Report form
                  const Text('REPORT DATE').xSmall().bold(),
                  const Gap(6),
                  const TextField(placeholder: Text('DD/MM/YYYY')),
                  const Gap(16),

                  FormField(
                    key: _diagnosisKey,
                    label: const Text('PRIMARY DIAGNOSIS').xSmall().bold(),
                    validator: const LengthValidator(min: 3),
                    child: const TextField(placeholder: Text('Enter primary diagnosis')),
                  ),
                  const Gap(16),

                  FormField(
                    key: _notesKey,
                    label: const Text('CLINICAL NOTES').xSmall().bold(),
                    child: const TextField(
                      placeholder: Text('Enter clinical observations...'),
                      maxLines: 4,
                    ),
                  ),
                  const Gap(16),

                  FormField(
                    key: _treatmentKey,
                    label: const Text('TREATMENT PLAN').xSmall().bold(),
                    child: const TextField(
                      placeholder: Text('Outline treatment plan...'),
                      maxLines: 3,
                    ),
                  ),
                  const Gap(24),

                  // Action buttons
                  SubmitButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.save, size: 16),
                        const Gap(8),
                        const Text('Save Report to Registry').bold(),
                      ],
                    ),
                  ),
                  const Gap(10),
                  OutlineButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.share, size: 16),
                        const Gap(8),
                        const Text('Review & Share'),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Center(
                    child: LinkButton(
                      onPressed: () => context.pop(),
                      child: Text('Cancel Entry', style: TextStyle(color: theme.colorScheme.destructive)).small(),
                    ),
                  ),
                  const Gap(32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
