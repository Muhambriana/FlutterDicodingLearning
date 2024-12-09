import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';

import '../../../models/course.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/helper.dart';
import '../detail/course_detail_screen.dart';
import '../widget/back_button.dart';

class CourseListWeb extends StatelessWidget {
  final LearningPath learningPath;
  final int itemCount;

  const CourseListWeb({super.key, required this.itemCount, required this.learningPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppBar(),
          const SizedBox(
            height: 30,
          ),
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
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: CourseGrid(itemCount: itemCount, courseList: learningPath.courseList,),
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
    return const SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButtonDicoding(),
        ],
      ),
    );
  }
}

class CourseGrid extends StatelessWidget {
  final int itemCount;
  final List<CourseModel> courseList;

  const CourseGrid({super.key, required this.itemCount, required this.courseList});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: itemCount,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children:
      courseList.map((course) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(course: course),
              ),
            );
          },
          child: CourseCard(
            course: course,
          ),
        );
      }).toList(),
    );
  }
}

class CourseCard extends StatelessWidget {
  final CourseModel course;

  const CourseCard({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.black
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Image.network(
                course.banner,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                course.name,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  const Text(
                    "Module: ",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: AppColors.nonPrimaryText
                    ),
                  ),
                  Text(
                    course.totalModules.toString(),
                    style: const TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}