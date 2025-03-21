import 'package:awaj/features/main/new_routes/pages/main_nid_verify.dart';

import 'package:shadcn_flutter/shadcn_flutter.dart';

class MainRegisterScreen extends StatefulWidget {
  const MainRegisterScreen({super.key});

  @override
  State<MainRegisterScreen> createState() => _MainRegisterScreenState();
}

class _MainRegisterScreenState extends State<MainRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return NIDVerificationScreen();
  }
}
