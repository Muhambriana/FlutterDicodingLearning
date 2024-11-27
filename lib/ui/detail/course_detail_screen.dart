import 'package:flutter/material.dart';
import '../../../models/course.dart';
import '../../../ui/detail/detail_mobile_page.dart';
import '../../../ui/detail/detail_web_page.dart';


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