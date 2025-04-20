import 'package:awaj/features/main/components/health_service_card.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class MainInitPage extends StatelessWidget {
  const MainInitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        // Logo Section
        AppBarWidget(
            hasActionButton: false,
            leading: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/images/flag.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
            title: LocaleKeys.nepalHealthApp),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Login Button & Biometric
            Card(
              child: Row(
                children: [
                  Expanded(
                    child: Button.primary(
                      onPressed: () {
                        context.go("/main");
                      },
                      child: Text(context.tr(LocaleKeys.clickHereToLogin)),
                    ),
                  ),
                  Gap(12),
                  IconButton.primary(
                    onPressed: () {
                      // biometric login
                    },
                    icon: Icon(Icons.fingerprint),
                  )
                ],
              ),
            ),

            Gap(36),
            // Services Grid
            Expanded(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Services",
                    ).large().bold(),
                    Expanded(
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          childAspectRatio: 1,
                        ),
                        children: [
                          HealthServiceCompactCard(
                            title: LocaleKeys.findHospitals,
                            icon: Icons.local_hospital_outlined,
                            color: const Color(0xFF172B4D),
                            onPressed: () => context.go("/health-location"),
                          ),
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
                            onPressed: () => context.go('/ambulance'),
                          ),
                          HealthServiceCompactCard(
                            title: LocaleKeys.healthTips,
                            icon: Icons.health_and_safety_outlined,
                            color: const Color(0xFF172B4D),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
