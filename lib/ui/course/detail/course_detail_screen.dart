import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/ui/course/detail/detail_web_page.dart';
import '../../../models/course.dart';
import '../../../ui/course/detail/detail_mobile_page.dart';


class DetailScreen extends StatelessWidget {
  final CourseModel course;

  const DetailScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(course: course);
        } else {
          return DetailMobilePage(course: course);
        }
      },
    );
  }
}