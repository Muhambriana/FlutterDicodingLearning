import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/ui/course/list/course_list_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';
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

class CarouselNews extends StatelessWidget {
  const CarouselNews({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: newsBanner.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: Utils.getWidthByDevice(context, 0.01)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(newsBanner[index]),
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: Utils.getHeightByDevice(context, 0.200),
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 0.95,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}







