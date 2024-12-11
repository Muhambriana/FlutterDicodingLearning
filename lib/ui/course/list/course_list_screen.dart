import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'course_list_mobile.dart';
import 'course_list_web.dart';

class CourseListPage extends StatelessWidget {
  final LearningPath learningPath;

  const CourseListPage({required this.learningPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 700) {
            return CourseListMobile(learningPath: learningPath,);
          } else if (constraints.maxWidth <= 800) {
            return CourseListWeb(itemCount: 2, learningPath: learningPath,);
          }  else if (constraints.maxWidth <= 1000) {
            return CourseListWeb(itemCount: 3, learningPath: learningPath,);
          } else if (constraints.maxWidth <= 1200) {
            return CourseListWeb(itemCount: 4, learningPath: learningPath,);
          } else {
            return CourseListWeb(itemCount: 5, learningPath: learningPath,);
          }
        },
      ),
    );
  }
}

