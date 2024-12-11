
import 'package:flutter_dicoding_learning/utils/config/technology.dart';

import '../utils/config/config.dart';

class CourseModel {
  String name;
  List<PathParent> pathParent;
  CourseLevel courseLevel;
  int averageTimeToFinish;
  int totalStudents;
  int totalModules;
  double rating;
  double progress;
  String description;
  String banner;
  List<Technology> technology;
  List<String> reviewersPhoto;
  bool isBookmark;


  CourseModel({
    required this.name,
    required this.pathParent,
    required this.courseLevel,
    required this.averageTimeToFinish,
    required this.totalStudents,
    required this.totalModules,
    required this.rating,
    required this.progress,
    required this.description,
    required this.banner,
    required this.technology,
    required this.reviewersPhoto,
    required this.isBookmark
  });
}