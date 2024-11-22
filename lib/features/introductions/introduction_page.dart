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
        ),
        Text(
          DateFormat('EEE, MMMM d, y').format(DateTime.now()),
        ),
        const SizedBox(
          height: 12,
        ),
        Image.asset(
          'assets/images/pradippaudel.jpeg',
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to our platform, led by Pradip Poudel, Member of the House of Representatives of Nepal. This portal serves as a dedicated space for collecting and resolving issues related to Kathmandu 5. Your complaints are invaluable to us and we ensure a seamless process for registering them anytime. We ensure your inputs to the development of our community.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text('Feel free to share your thoughts anytime.', style: TextStyle(fontSize: 16)),
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
