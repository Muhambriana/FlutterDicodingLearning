import 'package:flutter/material.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';
import '../widget/carousel_news.dart';
import '../widget/learning_path_grid.dart';
import '../widget/notification_button.dart';

class HomePageMobile extends StatelessWidget {

  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(
          Utils.getWidthByDevice(context, 0.045),
          Utils.getHeightByDevice(context, 0.02),
          Utils.getWidthByDevice(context, 0.045),
          0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppBar(),
          Utils.getSizeBoxAsMarginY(context, 0.02),
          Column(
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
          Utils.getSizeBoxAsMarginY(context, 0.02),
          const CarouselNews(),
          Utils.getSizeBoxAsMarginY(context, 0.02),
          const Expanded(
              child: LearningPathGrid()
          ),
        ],
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
            width: 40,
            height: 40,
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







