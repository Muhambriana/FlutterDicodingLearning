
import '../utils/config/config.dart';

class CourseModel {
  String name;
  PathParent pathParent;
  CourseLevel courseLevel;
  int averageTimeToFinish;
  int totalStudents;
  int totalModules;
  double rating;
  String url;
  String description;
  String banner;
  List<String> reviewersPhoto;


  CourseModel({
    required this.name,
    required this.pathParent,
    required this.courseLevel,
    required this.averageTimeToFinish,
    required this.totalStudents,
    required this.totalModules,
    required this.rating,
    required this.url,
    required this.description,
    required this.banner,
    required this.reviewersPhoto,
  });
}