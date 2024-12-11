import 'package:flutter/material.dart';

class EmptyInfo extends StatelessWidget {
  const EmptyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          height: 300,
          'assets/images/ic_empty.png',
        ),
        const SizedBox(height: 30,),
        const Text(
            "Sorry, No Course in here",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,)
        ),
        const SizedBox(height: 10,),
        const Text(
            "You can try to another learning path",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,)
        ),
      ],
    );
  }
}