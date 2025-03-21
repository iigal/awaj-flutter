import 'package:intl/intl.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome, Atish',
        ).bold().x2Large(),
        Row(
          children: [
            const IconButton.ghost(icon: Icon(Icons.calendar_today)),
            const Gap(4),
            Text(
              DateFormat('EEE, MMMM d, y').format(DateTime.now()),
            ).muted(),
          ],
        ),
        const Gap(12),
        Image.asset(
          'assets/images/pradippaudel.jpeg',
        ),
        const Gap(12),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to our platform, led by Pradip Poudel, Member of the House of Representatives of Nepal. This portal serves as a dedicated space for collecting and resolving issues related to Kathmandu 5. Your complaints are invaluable to us and we ensure a seamless process for registering them anytime. We ensure your inputs to the development of our community.',
                    ),
                    const Gap(12),
                    const Text('Feel free to share your thoughts anytime.').semiBold(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
