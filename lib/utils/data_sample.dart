import '../models/course.dart';
import '../utils/config/config.dart';

var courseList = [
  CourseModel(
    name: 'Belajar Membuat Aplikasi Flutter untuk Pemula',
    pathParent: PathParent.multiPlatform,
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 10,
    totalStudents: 999,
    totalModules: 81,
    rating: 4.9,
    progress: 98,
    description:
    'Sejak dikenalkan oleh Google pada Mei 2017, Flutter langsung menarik perhatian. UI toolkit dari Google ini memungkinkan developer untuk mengembangkan aplikasi di berbagai platform mobile seperti Android dan iOS. Bahkan pada pengembangan terbarunya, Flutter tidak hanya digunakan pada platform mobile, namun sudah merambah ke sisi web dan desktop. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159864215/render.jpeg?token=exp=1759190400~hmac=5b7e7b77d68408c5a3c84cdb34c930ef7a3f91b788c63cb6760fa6cae5b70f81',
    technology: [
      'IOS',
      'Android',
      'Web'
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-d13c84e75ec527250b9ecc6f7079688b20240922021026.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-bd905a077e6dd125b4bcbdc56bb5bd7c20241107133121.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-db5b847be74fdf4ae198d215accdc85b20231226112039.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7be4a0a8d42738abf94c8033dce75e0020221208201312.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-feb692cc7d91c66cf026a3521e1230da20240514112204.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-6b9ebfddee1fdff79d912103c8c9f3ca20240507113604.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:52ca3572e52e2fce90b6d319ed2a2a3820210929165834.png'
    ],
  ),
  CourseModel(
    name: 'Belajar Fundamental Aplikasi Flutter',
    pathParent: PathParent.multiPlatform,
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 90,
    totalStudents: 4850,
    totalModules: 101,
    rating: 4.83,
    progress: 0,
    description:
    'Sejak dikenalkan oleh Google pada Mei 2017, Flutter langsung menarik perhatian. UI toolkit dari Google ini memungkinkan developer untuk mengembangkan aplikasi di berbagai platform mobile seperti Android dan iOS. Bahkan pada pengembangan terbarunya, Flutter tidak hanya digunakan pada platform mobile, namun sudah merambah ke sisi web dan desktop. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159958634/render.jpeg?token=exp=1759190400~hmac=3bc905b22befc04f299815469ccaad1c4e6c443bcade0f66ec2b7e1d732af399',
    technology: [
      'IOS',
      'Android',
      'Web'
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-11bd08bac6dc225670139753c20f60bc20240205134622.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-df64c85f2f70611d293966b01f8c5a9f20240615153103.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:69dd63f4d64d2b90261e774ceedc217120230122164413.png',
    ],
  ),
  CourseModel(
    name: 'Belajar Prinsip Pemrograman SOLID',
    pathParent: PathParent.android,
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 15,
    totalStudents: 42247,
    totalModules: 95,
    rating: 4.87,
    progress: 61,
    description:
    'Semua orang bisa membuat kode program selama dia tahu suatu bahasa pemrograman. Tetapi membuat kode program yang mudah dimengerti, mudah dikelola, dan mudah dikembangkan adalah tantangan yang nyata, bahkan untuk seorang yang sudah menjadi programmer sekalipun. Di dalam paradigma OOP (object-oriented programming), terdapat prinsip SOLID sebagai solusi yang bisa digunakan untuk menyelesaikan problem tersebut. Prinsip ini dikenalkan oleh Robert C. Martin, seorang engineer dan penulis dari buku Clean Code. ',
    banner: 'https://pikaso.cdnpk.net/private/production/1159958626/render.jpeg?token=exp=1759449600~hmac=f297dc38aea653fb81f82f7e0025aac9cc64e42d225e96a9965f2cbeaba22711',
    technology: [
      'Android',
      'IOS',
      'Multi-Platform',
      'Web',
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7b460850297426c432bc064f31f8de0a20220412100724.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-db5b847be74fdf4ae198d215accdc85b20231226112039.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7be4a0a8d42738abf94c8033dce75e0020221208201312.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-f91f994997e71c054011f54994dce6ce20241114200929.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:a24fed3e930193c1117094810f2fbb2e20230811104511.png',
    ],
  ),
];