import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/ui/course/list/empty_info.dart';

import '../../../models/course.dart';
import '../../../models/learning_path.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/helper.dart';
import '../detail/course_detail_screen.dart';
import '../widget/back_button.dart';

class CourseListMobile extends StatelessWidget {
  final LearningPath learningPath;

  const CourseListMobile({super.key, required this.learningPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppBar(),
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
            child: learningPath.courseList.isEmpty ? const EmptyInfo() : CourseList(courseList: learningPath.courseList,),
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


class CourseList extends StatelessWidget {
  final List<CourseModel> courseList;

  const CourseList({required this.courseList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: courseList.length,
      itemBuilder: (context, index) {

        final margin =
        index == 0 ? EdgeInsets.zero:
        index == (courseList.length - 1) ? const EdgeInsets.symmetric(vertical: 10) :
        const EdgeInsets.only(top: 10);

        return CourseCard(
          course: courseList[index],
          margin: margin,
        );
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  final CourseModel course;
  final EdgeInsetsGeometry margin;

  const CourseCard({required this.course, required this.margin, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(course: course)));
      },
      child: Card(
        margin: margin, // Remove default margin of the Card
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
    );
  }
}