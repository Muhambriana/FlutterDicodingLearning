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
          if (constraints.maxWidth <= 900) {
            return CourseListMobile(learningPath: learningPath,);
          } else if (constraints.maxWidth <= 1200) {
            return CourseListWeb(itemCount: 3, learningPath: learningPath,);
          } else {
            return CourseListWeb(itemCount: 4, learningPath: learningPath,);
          }
        },
      ),
    );
  }
}

