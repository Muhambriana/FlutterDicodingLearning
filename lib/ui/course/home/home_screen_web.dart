import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/ui/course/widget/notification_button.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';
import '../widget/carousel_news.dart';
import '../widget/learning_path_grid.dart';

class HomePageWeb extends StatelessWidget {

  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.fromLTRB(
            Utils.getWidthByDevice(context, 0.045),
            Utils.getHeightByDevice(context, 0.02),
            Utils.getWidthByDevice(context, 0.045),
            0
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppBar(),
            SizedBox(height: 20,),
            WelcomeTextSection(),
            SizedBox(height: 20,),
            CarouselNews(),
            SizedBox(height: 10,),
            LearningPathGrid(),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NotificationButton(
            onTap: () {

            },
            hasUnreadNotifications: true,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(user.photoProfile),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeTextSection extends StatelessWidget {
  const WelcomeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey, ${user.fullName}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Learn new Skills today!",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }}






