import 'package:awaj/core/fhir/mock_fhir_auth_service.dart';
import 'package:awaj/db.dart';
import 'package:awaj/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({super.key});

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  bool _doctorMode = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userName = pocketBaseDB.authStore.record?.data['name'] ?? 'User';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(16),

            // Profile header
            Column(
              children: [
                Avatar(
                  initials: Avatar.getInitials(userName),
                  size: 72,
                  badge: const AvatarBadge(size: 14, color: Colors.green),
                ),
                const Gap(12),
                Text(userName).large().bold(),
                const Gap(4),
                const Text('Senior Consultant • Cardiology').xSmall().muted(),
                const Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlineButton(
                      size: ButtonSize.small,
                      onPressed: () {},
                      child: const Text('MEDICAL ID').xSmall().bold(),
                    ),
                    const Gap(8),
                    OutlineButton(
                      size: ButtonSize.small,
                      onPressed: () {},
                      child: const Text('HEALTH ID').xSmall().bold(),
                    ),
                    const Gap(8),
                    OutlineButton(
                      size: ButtonSize.small,
                      onPressed: () {},
                      child: const Text('VERIFIED').xSmall().bold(),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(24),

            // Doctor Mode
            Card(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.medical_services, size: 20, color: theme.colorScheme.primary),
                      ),
                      const Gap(12),
                      const Text('Doctor Mode').semiBold(),
                      const Spacer(),
                      Switch(
                        value: _doctorMode,
                        onChanged: (v) => setState(() => _doctorMode = v),
                      ),
                    ],
                  ),
                  const Gap(8),
                  const Text('Switch to clinical workspace to manage patient records, prescriptions and clinical data.').xSmall().muted(),
                  const Gap(12),
                  PrimaryButton(
                    onPressed: () {},
                    child: const Text('Switch to Workspace').small(),
                  ),
                ],
              ),
            ),
            const Gap(16),

            // System Preferences
            Card(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.settings, size: 18, color: theme.colorScheme.mutedForeground),
                      const Gap(8),
                      const Text('System Preferences').semiBold(),
                    ],
                  ),
                  const Gap(16),
                  _buildSettingsRow(
                    theme,
                    Icons.display_settings,
                    'Display Settings',
                    onTap: () => context.go("/main/settings/display-setting"),
                  ),
                  const Gap(8),
                  _buildSettingsRow(
                    theme,
                    Icons.language,
                    'Language',
                    trailing: Text(context.locale.languageCode.toUpperCase()).xSmall().muted(),
                  ),
                ],
              ),
            ),
            const Gap(16),

            // Privacy & Data
            Card(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.shield_outlined, size: 18, color: theme.colorScheme.mutedForeground),
                      const Gap(8),
                      const Text('Privacy & Data').semiBold(),
                    ],
                  ),
                  const Gap(16),
                  _buildSettingsRow(theme, Icons.download, 'Export Health Data'),
                  const Gap(8),
                  _buildSettingsRow(theme, Icons.lock_outline, 'Data Access Log'),
                  const Gap(8),
                  _buildSettingsRow(theme, Icons.share, 'Shared Records'),
                ],
              ),
            ),
            const Gap(16),

            // Danger Zone
            Card(
              padding: const EdgeInsets.all(16),
              filled: true,
              fillColor: theme.colorScheme.destructive.withValues(alpha: 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning_amber, size: 18, color: theme.colorScheme.destructive),
                      const Gap(8),
                      Text('Danger Zone', style: TextStyle(color: theme.colorScheme.destructive)).semiBold(),
                    ],
                  ),
                  const Gap(16),
                  DestructiveButton(
                    onPressed: () async {
                      await MockFhirAuthService.logout();
                      if (context.mounted) context.go("/main");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.logout, size: 16),
                        const Gap(8),
                        const Text('Sign Out').bold(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsRow(ThemeData theme, IconData icon, String label, {VoidCallback? onTap, Widget? trailing}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: theme.colorScheme.muted.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, size: 18, color: theme.colorScheme.mutedForeground),
            const Gap(12),
            Expanded(child: Text(label).small()),
            if (trailing != null) trailing,
            const Gap(4),
            Icon(Icons.chevron_right, size: 16, color: theme.colorScheme.mutedForeground),
          ],
        ),
      ),
    );
  }
}

class SettingsAppDisplayMenu extends StatelessWidget {
  const SettingsAppDisplayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          leading: [
            IconButton.ghost(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
          ],
          title: const Text('Display Settings').semiBold(),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: rp.Consumer(builder: (context, ref, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Adjust the app display scale').small().muted(),
              const Gap(16),
              Slider(
                max: 1.5,
                min: 0.5,
                divisions: 10,
                value: SliderValue.single(ref.watch(globalAppScaleNotifierProvider)),
                onChanged: (value) {
                  ref.read(globalAppScaleNotifierProvider.notifier).changeScale(value.value);
                },
              ),
              const Gap(8),
              Text('Scale: ${ref.watch(globalAppScaleNotifierProvider).toStringAsFixed(1)}x').small().muted(),
            ],
          );
        }),
      ),
    );
  }
}
