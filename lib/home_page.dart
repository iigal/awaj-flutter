import 'package:awaj/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Banner Section
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 200,
                  //       decoration: const BoxDecoration(
                  //         image: DecorationImage(
                  //           image: AssetImage('images/pradippaudel.jpeg'),
                  //           fit: BoxFit.cover,
                  //         ),
                  //       ),
                  //     ),
                  //     const Positioned.fill(
                  //       child: Align(
                  //         alignment: Alignment.center,
                  //         child: Text(
                  //           'Awaj - Transforming Awaj into Action',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 24,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome to our platform, led by Pradip Poudel, Member of the House of Representatives of Nepal. This portal serves as a dedicated space for collecting and resolving issues related to Kathmandu 5. Your complaints are invaluable to us and we ensure a seamless process for registering them anytime. We ensure your inputs to the development of our community.',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              Text('Feel free to share your thoughts anytime.',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Image.asset(
                          'images/pradippaudel.jpeg',
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const BottomNavbarWidget()
        ],
      ),
    );
  }
}

// Footer Column Widget
class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;

  const FooterColumn({required this.title, required this.links, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ...links.map((link) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(link),
            )),
      ],
    );
  }
}
