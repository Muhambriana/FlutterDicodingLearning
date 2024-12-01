import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/models/user.dart';
import '../models/course.dart';
import '../utils/config/config.dart';

var courseList = [
  CourseModel(
    name: 'Belajar Fundamental Aplikasi Flutter',
    pathParent: [
      PathParent.multiPlatform
    ],
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
      PathParent.android,
      PathParent.ios,
      PathParent.multiPlatform,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-11bd08bac6dc225670139753c20f60bc20240205134622.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-df64c85f2f70611d293966b01f8c5a9f20240615153103.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:69dd63f4d64d2b90261e774ceedc217120230122164413.png',
    ],
    isBookmark: false,
  ),
  CourseModel(
    name: 'Belajar Membuat Aplikasi Flutter untuk Pemula',
    pathParent:
    [
      PathParent.multiPlatform
    ],
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
      PathParent.android,
      PathParent.ios,
      PathParent.multiPlatform,
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
    isBookmark: false,
  ),
  CourseModel(
    name: 'Belajar Prinsip Pemrograman SOLID',
    pathParent: [
      PathParent.android,
      PathParent.ios,
      PathParent.multiPlatform,
      PathParent.web,
    ],
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
      PathParent.android,
      PathParent.ios,
      PathParent.multiPlatform,
      PathParent.web,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7b460850297426c432bc064f31f8de0a20220412100724.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-db5b847be74fdf4ae198d215accdc85b20231226112039.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7be4a0a8d42738abf94c8033dce75e0020221208201312.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-f91f994997e71c054011f54994dce6ce20241114200929.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:a24fed3e930193c1117094810f2fbb2e20230811104511.png',
    ],
    isBookmark: true,
  ),
];

var user = User(
      fullName: "Anabila Jane Wilson",
      photoProfile: "https://images.unsplash.com/photo-1598257006463-7c64a5a538cc?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
);

var newsBanner = [
  'assets/images/live_1.jpg',
  'assets/images/program_4.jpg',
  'assets/images/live_2.jpg',
  'assets/images/program_2.png',
  'assets/images/live_3.png',
  'assets/images/program_1.jpg',
  'assets/images/program_3.jpg',
  'assets/images/program_5.png',
];

var learningPathList = [
  LearningPath(
    path: PathParent.multiPlatform,
    desc: "Kurikulum disusun oleh Dicoding bersama Google beserta pelaku industri Multi-Platform App Development. Siswa dipersiapkan untuk menjadi Multi-Platform App Developer sesuai standar kebutuhan industri.",
    banner: "https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.29350-15/469036808_608062958357522_3453328994396907197_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=Pr-Dtbl4mlUQ7kNvgGuIb1U&_nc_gid=2eeb5d4e16e942cf805eadfc3bad5e58&edm=AONqaaQBAAAA&ccb=7-5&ig_cache_key=MzUxMzMwNzc5ODc3MDEzNDU3MA%3D%3D.3-ccb7-5&oh=00_AYA_MSQmXj3DiauFo96sq0e7XbyFBaBRGzu49JnFB5b9FQ&oe=6751E80D&_nc_sid=4e3341",
  ),
  LearningPath(
    path: PathParent.backEndJavaScript,
    desc: "Kurikulum disusun oleh Dicoding bersama AWS beserta pelaku industri Back-End Development. Siswa dipersiapkan untuk menjadi Back-End Developer dengan JavaScript sesuai kebutuhan industri.",
    banner: "https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.29350-15/468813088_417576148097759_1022218179250416342_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=yoJ9WPgnCSEQ7kNvgGNX5yY&_nc_gid=2eeb5d4e16e942cf805eadfc3bad5e58&edm=AONqaaQBAAAA&ccb=7-5&ig_cache_key=MzUxMzMwNzQyNTkwNDgxMjYwMA%3D%3D.3-ccb7-5&oh=00_AYBv0SD_hvGCPsDskX3EsS-X5WmKYcQWA_DrqCYzhPNmMQ&oe=6751D53E&_nc_sid=4e3341",
  ),
  LearningPath(
      path: PathParent.ios,
      desc: "Kurikulum disusun oleh Dicoding dan pelaku industri di bidang iOS Development. Siswa dipersiapkan untuk menjadi iOS Developer sesuai standar kebutuhan industri.",
      banner: "https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.29350-15/468718178_1288309049254604_8944645682557044018_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=4Lwjqc2piWUQ7kNvgHAeD7D&_nc_gid=95fd30abb77b41ef8b8e695187d518b2&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzUxMzMwNzA0MTkyNDczMDY2NQ%3D%3D.3-ccb7-5&oh=00_AYB5GyRMLyN9gnPOwAxHVs0g_9JdV6EdbAIf_abl_XS9Pg&oe=6751ECF4&_nc_sid=7a9f4b",
  ),
  LearningPath(
    path: PathParent.machineLearning,
    desc: "Kurikulum lengkap yang disusun oleh Dicoding bersama IBM beserta pelaku industri. Siswa dipersiapkan untuk menjadi Machine Learning Engineer sesuai standar kebutuhan industri.",
    banner: "https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.29350-15/468812322_430597030104507_6413531474572697719_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=BLD6qsvd5vYQ7kNvgESrPxO&_nc_gid=95fd30abb77b41ef8b8e695187d518b2&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzUxMzMwNzYyNjg1NDAzNTI1OA%3D%3D.3-ccb7-5&oh=00_AYCJ2jMbdwG-kCw0Kuwo_3X9EpKmFbjr6dkM6z4GFCRDwA&oe=6751F59B&_nc_sid=7a9f4b",
  ),
  LearningPath(
    path: PathParent.android,
    desc: "Kurikulum didesain dengan persetujuan dari Tim Google Android untuk mempersiapkan developer Android standar Global. Dicoding adalah Google Developer Authorized Training Partner.",
    banner: "https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.29350-15/468899459_1083930800189992_6761144895368391932_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=dfyGiy-VoWgQ7kNvgHiujo2&_nc_gid=2eeb5d4e16e942cf805eadfc3bad5e58&edm=AONqaaQBAAAA&ccb=7-5&ig_cache_key=MzUxMzMwNzk4NjI3MjIzNzQxNQ%3D%3D.3-ccb7-5&oh=00_AYBpedHQVibOt7nxJ0EvAr5Mi50V5XroDt1nWq0SuiJwWQ&oe=6751DEF4&_nc_sid=4e3341",
  ),
  LearningPath(
      path: PathParent.devOps,
      desc: "Kurikulum lengkap yang didesain oleh tim expert Dicoding bersama para praktisi industri. Siswa dipersiapkan untuk menjadi seorang DevOps Engineer berstandar global.",
      banner: "https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.29350-15/468812325_1603624660243006_4581586059861065178_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=zBt8jNEtTKkQ7kNvgE9ODKJ&_nc_gid=2eeb5d4e16e942cf805eadfc3bad5e58&edm=AONqaaQBAAAA&ccb=7-5&ig_cache_key=MzUxMzMwNzI2MDczMzEzODMyNw%3D%3D.3-ccb7-5&oh=00_AYDtc4DZqxEM_BVGBh0xNDSsDaeXE6hVGQ4Mq23YcTTdeA&oe=6751CD83&_nc_sid=4e3341",
  ),
];