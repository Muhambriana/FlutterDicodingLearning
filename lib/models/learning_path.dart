import 'package:flutter_dicoding_learning/utils/config/config.dart';
import 'course.dart';

class LearningPath {
  PathParent path;
  String desc;
  String banner;
  List<CourseModel> courseList;

  LearningPath({
    required this.path,
    required this.desc,
    required this.banner,
    required this.courseList,
  });
}