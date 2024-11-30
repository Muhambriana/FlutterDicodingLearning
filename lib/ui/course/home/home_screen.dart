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
              const SizedBox(height: 10,),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              Text(
                user.fullName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(user.photoProfile),
            backgroundColor: Colors.transparent,
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          return CourseCard(course: courseList[index]);
        },
      ),
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





