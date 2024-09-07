import 'package:awaj/components/theme_color.dart';
import 'package:flutter/material.dart';

class CustomModalDelete extends StatelessWidget {
  final bool visible;
  final String modalText;
  final VoidCallback onClickedYes;
  final VoidCallback onClickedNo;

  CustomModalDelete({
    required this.visible,
    required this.modalText,
    required this.onClickedYes,
    required this.onClickedNo,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return SizedBox.shrink();

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: ThemeColor.backgroundLight,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  modalText,
                  style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: onClickedYes,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text('Yes', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: onClickedNo,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text('No', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


