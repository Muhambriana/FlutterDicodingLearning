import '../models/course.dart';
import '../utils/config/config.dart';

var courseList = [
  CourseModel(
    name: 'Belajar Fundamental Aplikasi Flutter',
    pathParent: PathParent.multiPlatform,
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 10,
    totalStudents: 999,
    totalModules: 81,
    rating: 4.9,
    url: 'https://www.dicoding.com/academies/191-memulai-pemrograman-dengan-dart',
    description:
    'Dart adalah sebuah bahasa pemrograman yang dikembangkan oleh Google dan merupakan bahasa pemrograman resmi untuk Flutter, sebuah UI toolkit dan aplikasi multiplatform dari Google. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent karena dapat menghemat waktu dan tenaga dengan cara cukup membutuhkan satu codebase untuk mengembangkan aplikasi di berbagai platform, daripada harus menghabiskan waktu untuk membuat codebase terpisah untuk masing-masing platform.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159864215/render.jpeg?token=exp=1759190400~hmac=5b7e7b77d68408c5a3c84cdb34c930ef7a3f91b788c63cb6760fa6cae5b70f81',
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-d13c84e75ec527250b9ecc6f7079688b20240922021026.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-bd905a077e6dd125b4bcbdc56bb5bd7c20241107133121.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-db5b847be74fdf4ae198d215accdc85b20231226112039.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7be4a0a8d42738abf94c8033dce75e0020221208201312.png'
    ],
  ),
];