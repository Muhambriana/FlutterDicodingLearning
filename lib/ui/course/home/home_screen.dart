import 'package:flutter/material.dart';
import 'home_screen_mobile.dart';
import 'home_screen_web.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder:(BuildContext context, BoxConstraints constraints) {
            if(constraints.maxWidth <= 600) {
              return const HomePageMobile();
            } else {
              return const HomePageWeb();
            }
          }
      ),
    );
  }
}






