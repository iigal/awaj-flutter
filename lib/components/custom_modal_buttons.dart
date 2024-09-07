import 'package:awaj/components/localized_strings.dart';
import 'package:awaj/components/theme_color.dart';
import 'package:flutter/material.dart';

class CustomModalButtons extends StatelessWidget {
  final bool visible;
  final String modalText;
  final VoidCallback onClickedYes;
  final VoidCallback onClickedNo;

  CustomModalButtons({
    required this.visible,
    required this.modalText,
    required this.onClickedYes,
    required this.onClickedNo,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: ThemeColor.backgroundLight,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  modalText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: onClickedYes,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        LocalizedStrings.yes, // Replace with your localization method
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: onClickedNo,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        LocalizedStrings.no, // Replace with your localization method
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
