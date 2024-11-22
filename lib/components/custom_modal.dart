import 'package:flutter/material.dart';

class CustomModal extends StatelessWidget {
  final bool visible;
  final String modalText;
  final VoidCallback onClose;

  const CustomModal({
    super.key,
    required this.visible,
    required this.modalText,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return const SizedBox.shrink(); // If not visible, return an empty widget
    }
    return Container();
  }
}
