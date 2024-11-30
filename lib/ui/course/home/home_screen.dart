import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/utils/app_colors.dart';
import '../detail/course_detail_screen.dart';
import '../../../models/course.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';


class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppBar(),
              const SizedBox(height: 20,),
              Padding(
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
              ),
              const SizedBox(height: 20,),
              _buildCarousel(newsBanner),
              const SizedBox(height: 10,),
              const CourseList()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarousel(List<String> newsBanner) {
    return Builder(
      builder: (context) {
        return CarouselSlider.builder(
          itemCount: newsBanner.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
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
      },
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
          _buildIconNotification(true),
          Container(
            width: 50,
            height: 50,
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

  Widget _buildIconNotification(bool hasUnreadNotifications) {
    return GestureDetector(
      onTap: () {

      },
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Icon(
              Icons.notifications,
              size: 24,
              color: Colors.white,
            ),
          ),
          if (hasUnreadNotifications)
            const Positioned(
              top: 4.0,
              right: 4.0,
              child: CircleAvatar(
                radius: 4.0,
                backgroundColor: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: courseList.map((course) {
        return CourseCard(course: course);
      }).toList(),
    );
  }
}


class CourseCard extends StatelessWidget {
  final CourseModel course;

  const CourseCard({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(course: course))
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(course.banner)
                    )
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          course.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rate_outlined,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              course.rating.toString(),
                              style: Utils.getInformationTextStyle(),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: LinearProgressIndicator(
                                  value: course.progress/100, // Progress value /100
                                  color: AppColors.primaryColor,
                                  backgroundColor: Colors.grey.shade600,
                                  minHeight: 10,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "${course.progress.toInt()}%",
                                  style: Utils.getInformationTextStyle(),
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





