import 'package:flutter/material.dart';

class BackButtonDicoding extends StatelessWidget {
  const BackButtonDicoding({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)], // Gradient colors
          ),
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0), // Adjust padding as needed
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 24, // Adjust icon size
            color: Colors.white, // Icon color
          ),
        ),
      ),
    );
  }
}