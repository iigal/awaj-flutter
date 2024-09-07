import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18,vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          BottomNavbarContents(label: "Home",),
          BottomNavbarContents(label: "App",),
          BottomNavbarContents(label: "Profile",),
          BottomNavbarContents(label: "More",),
        ],
      ),
    );
  }
}

class BottomNavbarContents extends StatelessWidget {
  final String label;
  final IconData icon;
  const BottomNavbarContents({super.key, required this.label,  this.icon = Icons.document_scanner_rounded});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon),
        Text(label),
        
      ],
    );
  }
}