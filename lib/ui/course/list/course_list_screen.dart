import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/ui/course/detail/back_button.dart';

import '../../../models/course.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/helper.dart';
import '../detail/course_detail_screen.dart';

class CourseListPage extends StatelessWidget {
  final LearningPath learningPath;

  const CourseListPage({required this.learningPath, super.key});

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
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "About this learning path",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.nonPrimaryText,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    learningPath.desc,
                    style: const TextStyle(
                      color: AppColors.nonPrimaryText,
                    ),
                  ),
                ],
              ),
              CourseList(courseList: learningPath.courseList),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButtonDicoding(),
        ],
      ),
    );
  }

  Widget _buildIconNotification(bool hasUnreadNotifications) {
    return GestureDetector(
      onTap: () {},
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
  final List<CourseModel> courseList;

  const CourseList({required this.courseList, super.key});

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
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(course: course)));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(course.banner))),
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
                                  value: course.progress / 100,
                                  // Progress value /100
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
                                )),
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
