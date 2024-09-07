import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'theme_color.dart'; // Import your theme color constants

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
    return MoonModal(
      backgroundColor: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width - 64,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  modalText,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: MoonOutlinedButton(
                    onTap: onClose,
                    label: const Text(
                      'Close',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
