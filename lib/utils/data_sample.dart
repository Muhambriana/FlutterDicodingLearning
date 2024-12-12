import 'dart:ui';

import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/models/user.dart';
import 'package:flutter_dicoding_learning/utils/config/technology.dart';
import '../models/course.dart';
import '../utils/config/config.dart';

var courseList = [
  CourseModel(
    name: 'Memulai Pemrograman dengan Dart',
    pathParent: [
      PathParent.multiPlatform,
    ],
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 20,
    totalStudents: 30023,
    totalModules: 0,
    rating: 4.84,
    progress: 100,
    description: 'Dart adalah sebuah bahasa pemrograman yang dikembangkan oleh Google dan merupakan bahasa pemrograman resmi untuk Flutter, sebuah UI toolkit dan aplikasi multiplatform dari Google. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent karena dapat menghemat waktu dan tenaga dengan cara cukup membutuhkan satu codebase untuk mengembangkan aplikasi di berbagai platform, daripada harus menghabiskan waktu untuk membuat codebase terpisah untuk masing-masing platform.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235478040/render.jpeg?token=exp=1763078400~hmac=0362c7bc4eeec5940e2e9a9030a4ef379f0ead9af96087755160b4ea4641c621',
    technology: [
      Technology.multiPlatform,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-bd905a077e6dd125b4bcbdc56bb5bd7c20241107133121.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-db5b847be74fdf4ae198d215accdc85b20231226112039.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:7be4a0a8d42738abf94c8033dce75e0020221208201312.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-feb692cc7d91c66cf026a3521e1230da20240514112204.png',
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
    progress: 100,
    description:
    'Sejak dikenalkan oleh Google pada Mei 2017, Flutter langsung menarik perhatian. UI toolkit dari Google ini memungkinkan developer untuk mengembangkan aplikasi di berbagai platform mobile seperti Android dan iOS. Bahkan pada pengembangan terbarunya, Flutter tidak hanya digunakan pada platform mobile, namun sudah merambah ke sisi web dan desktop. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235478025/render.jpeg?token=exp=1763078400~hmac=e08b9a5d61114bdc593cafa5e93403ef0b4990916cf2f523e995d3ab3920ea20',
    technology: [
      Technology.android,
      Technology.ios,
      Technology.multiPlatform,
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
    name: 'Belajar Fundamental Aplikasi Flutter',
    pathParent: [
      PathParent.multiPlatform
    ],
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 90,
    totalStudents: 4850,
    totalModules: 101,
    rating: 4.83,
    progress: 67,
    description:
    'Sejak dikenalkan oleh Google pada Mei 2017, Flutter langsung menarik perhatian. UI toolkit dari Google ini memungkinkan developer untuk mengembangkan aplikasi di berbagai platform mobile seperti Android dan iOS. Bahkan pada pengembangan terbarunya, Flutter tidak hanya digunakan pada platform mobile, namun sudah merambah ke sisi web dan desktop. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235477202/render.jpeg?token=exp=1763078400~hmac=33fd3beb67519122f3cf2d715960b9d07b786f4474a6b0160abc161a6d002241',
    technology: [
      Technology.android,
      Technology.ios,
      Technology.multiPlatform,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-11bd08bac6dc225670139753c20f60bc20240205134622.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-df64c85f2f70611d293966b01f8c5a9f20240615153103.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:69dd63f4d64d2b90261e774ceedc217120230122164413.png',
    ],
    isBookmark: false,
  ),
  CourseModel(
    name: 'Belajar Prinsip Pemrograman SOLID',
    pathParent: [
      PathParent.android,
      PathParent.ios,
      PathParent.multiPlatform,
    ],
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 15,
    totalStudents: 42247,
    totalModules: 95,
    rating: 4.87,
    progress: 0,
    description:
    'Semua orang bisa membuat kode program selama dia tahu suatu bahasa pemrograman. Tetapi membuat kode program yang mudah dimengerti, mudah dikelola, dan mudah dikembangkan adalah tantangan yang nyata, bahkan untuk seorang yang sudah menjadi programmer sekalipun. Di dalam paradigma OOP (object-oriented programming), terdapat prinsip SOLID sebagai solusi yang bisa digunakan untuk menyelesaikan problem tersebut. Prinsip ini dikenalkan oleh Robert C. Martin, seorang engineer dan penulis dari buku Clean Code. ',
    banner: 'https://pikaso.cdnpk.net/private/production/1235475382/render.jpeg?token=exp=1763078400~hmac=5bbf9761e182395d891f09998ba3c272c62671608830ff024fc616336ee43a0e',
    technology: [
      Technology.android,
      Technology.ios,
      Technology.multiPlatform,
       Technology.web,
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
  CourseModel(
    name: 'Belajar Pengembangan Aplikasi Flutter Intermediate',
    pathParent: [
      PathParent.multiPlatform,
    ],
    courseLevel: CourseLevel.advanced,
    averageTimeToFinish: 80,
    totalStudents: 1292,
    totalModules: 0,
    rating: 4.84,
    progress: 0,
    description: 'Pernahkah Anda melihat aplikasi-aplikasi keren yang mampu membantu kegiatan sehari-hari? Mulai dari aplikasi pesan antar, mengedit foto, hingga melacak aktivitas olahraga dibangun oleh Flutter Developer dengan berbagai macam fitur untuk memenuhi kebutuhan mereka. Kelas ini menjadi jawaban bagi Anda yang ingin belajar berbagai macam komponen advanced seperti mekanisme routing, pemakaian media, hingga penerapan peta supaya siap terjun ke industri.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235475376/render.jpeg?token=exp=1763078400~hmac=434e50267d33f82253dd1c5404e09cbaa552d9e637d04732df06d8fc53390d6c',
    technology: [
       Technology.ios,
       Technology.android,
       Technology.multiPlatform,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:74bf8d7dc06235d6039df433b61d951d20220323092235.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-5ed0338b5f6325cf45390908682343a920241009081239.png',
    ],
    isBookmark: false,
  ),
  CourseModel(
    name: 'Menjadi Flutter Developer Expert',
    pathParent: [
      PathParent.multiPlatform,
    ],
    courseLevel: CourseLevel.professional,
    averageTimeToFinish: 85,
    totalStudents: 2478,
    totalModules: 0,
    rating: 4.85,
    progress: 0,
    description: 'Sejak dikenalkan oleh Google pada Mei 2017, Flutter langsung menarik perhatian. UI toolkit dari Google ini memungkinkan developer untuk mengembangkan aplikasi di berbagai platform mobile seperti Android dan iOS. Bahkan pada pengembangan terbarunya, Flutter tidak hanya digunakan pada platform mobile, namun sudah merambah ke sisi web dan desktop. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159958634/render.jpeg?token=exp=1763078400~hmac=be1a4ec6221d84828fbbce62887563a1ecdcc01852e382a83952cf57d86a2e8c',
    technology: [
       Technology.ios,
       Technology.android,
       Technology.multiPlatform,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:91f2f01ffca7878d00da8e55957dfaff20230410183027.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:d7635381a24daacab8418330ac819af920231012120055.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:d54e7c8813d09649658198436825d5d620230222121004.png',
    ],
    isBookmark: false,
  ),
  CourseModel(
    name: 'Memulai Pemrograman dengan Kotlin',
    pathParent: [
      PathParent.android,
    ],
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 50,
    totalStudents: 68955,
    totalModules: 0,
    rating: 4.84,
    progress: 0,
    description: 'Kotlin merupakan bahasa utama yang digunakan dalam pengembangan Android saat ini. Hal ini karena manfaat yang diberikan seperti ringkas, cepat, dan aman. Selain itu, sifatnya yang interoperability membuat developer bisa beralih dari bahasa Java ke Kotlin dengan cepat. Tak ayal, Google pernah melaporkan hampir 80% dari 1000 aplikasi teratas di Play Store menggunakan Kotlin. Selain pengembangan Android, Kotlin dapat digunakan untuk berbagai macam pengembangan, baik itu server, back-end, maupun website.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235478023/render.jpeg?token=exp=1763078400~hmac=6bf4b605a9b8b8503786f4d354b152ede001489d323dad0cacd69c3b9f181bd3',
    technology: [
       Technology.android,
    ],
    reviewersPhoto: [
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740'
    ],
    isBookmark: false,
  ),
  CourseModel(
    name: 'Belajar Membuat Aplikasi Android untuk Pemula',
    pathParent: [
      PathParent.android,
    ],
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 60,
    totalStudents: 125102,
    totalModules: 0,
    rating: 4.87,
    progress: 0,
    description: 'Android merupakan sistem operasi mobile dengan pengguna terbesar di Indonesia, yakni sekitar 90%. Karena itulah banyak perusahaan yang membuat versi Android-nya supaya lebih dekat dengan pelanggannya, seperti Youtube, Facebook, dan Twitter. Perusahaan kecil pun turut membutuhkan aplikasi Android untuk menyelesaikan masalah yang ada. Ini juga menandakan bahwa kebutuhan akan Android developer semakin meningkat. Tak heran, profesi Android developer merupakan 1 dari 5 profesi yang paling diincar perusahaan.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235478012/render.jpeg?token=exp=1763078400~hmac=704c1a9a0b90bad3b44b4cceea67ba19c7409585bda2ea628842be52990ad38c',
    technology: [
       Technology.android,
    ],
    reviewersPhoto: [
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740'
    ],
    isBookmark: false,
  ),
  CourseModel(
    name: 'Cloud Practitioner Essentials (Belajar Dasar AWS Cloud)',
    pathParent: [
      PathParent.backEndJavaScript,
    ],
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 15,
    totalStudents: 194570,
    totalModules: 0,
    rating: 4.81,
    progress: 0,
    description: 'Komputasi cloud telah berkembang secara signifikan dan semakin populer beberapa tahun terakhir. Salah satu platform cloud terdepan dan paling komprehensif adalah Amazon Web Services (AWS). Jutaan pelanggan telah menggunakan AWS, termasuk tiga unicorn asal Indonesia seperti Traveloka, Tokopedia, dan Gojek. Maka dari itu, kuasailah ilmu komputasi cloud agar Anda dapat memenuhi kebutuhan industri yang kian bertumbuh dan mulailah langkah perjalanan cloud Anda dengan mempelajari kelas ini.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235477132/render.jpeg?token=exp=1763078400~hmac=89042d82ba3958b265a9c2a1136f3a4e4938516ba80d4417db9ebd45e5914852',
    technology: [
       Technology.backEndJavaScript,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:74bf8d7dc06235d6039df433b61d951d20220323092235.png',
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740',
    ],
    isBookmark: false,
  ),

  CourseModel(
    name: 'Belajar Dasar Pemrograman JavaScript',
    pathParent: [
      PathParent.googleCloudPro,
      PathParent.react,
      PathParent.frontEndWeb,
      PathParent.backEndJavaScript,
    ],
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 46,
    totalStudents: 190931,
    totalModules: 0,
    rating: 4.86,
    progress: 0,
    description: 'JavaScript adalah bahasa pemrograman yang wajib dikuasai oleh seorang web developer. Bahasa ini awalnya digunakan untuk membuat sebuah website menjadi lebih interaktif. Dalam perkembangannya, JavaScript tidak lagi hanya digunakan pada browser, melainkan juga bisa berjalan pada server. Ini berarti JavaScript digunakan di seluruh bagian website, mulai dari front-end hingga back-end. Bahkan, kini JavaScript mulai merambah ke platform lain seperti mobile, desktop, dan game.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235624733/render.jpeg?token=exp=1763078400~hmac=8ef9b32f8b36542e74ae5a3aff11b68f08c8a4bf6392dab0791f08e66c8d547e',
    technology: [
       Technology.googleCloudPro,
       Technology.react,
       Technology.frontEndWeb,
       Technology.backEndJavaScript,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:74bf8d7dc06235d6039df433b61d951d20220323092235.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:b688c343da72dc68c6e1a4449551064020230813112101.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:5f788c7d15d4d66e14144d33a3d72d4820220407160743.png',
    ],
    isBookmark: false,
  ),

  CourseModel(
    name: 'Belajar Back-End Pemula dengan JavaScript',
    pathParent: [
      PathParent.backEndJavaScript,
      PathParent.devOps,
    ],
    courseLevel: CourseLevel.beginner,
    averageTimeToFinish: 45,
    totalStudents: 121601,
    totalModules: 0,
    rating: 4.90,
    progress: 0,
    description: 'Back-End Developer merupakan developer yang memiliki peran sangat penting, karena Back-End Developer menjadi faktor vital dalam membangun sebuah sistem aplikasi meskipun perannya tidak terlihat secara langsung oleh pengguna. Seorang Back-End Developer harus mampu membangun layanan yang mampu mendukung aplikasi Front-End dapat berfungsi dengan baik. Kelas ini membahas tuntas kemampuan dasar untuk menjadi seorang Back-End Developer dengan membangun RESTful API menggunakan teknologi JavaScript (Node.js) yang populer.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235624716/render.jpeg?token=exp=1763078400~hmac=488510c36b3f294ebd22f481caa976c73d20c1f92c008f65b1b5f79cb356d34f',
    technology: [
       Technology.backEndJavaScript,
       Technology.devOps,
    ],
    reviewersPhoto: [
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:882845d933b49ef496583e197c933b0320230509212712.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos-d13c84e75ec527250b9ecc6f7079688b20240922021026.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:293c186b6540fc00edb4b211a5e738b820220906090708.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:808cae0e3ff63bd612cf970a2573d80520220306142550.png',
      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:3232a24a3904e6ac8873b45cc2e40fb920231001131538.png',
    ],
    isBookmark: false,
  ),

  CourseModel(
    name: 'Architecting on AWS (Membangun Arsitektur Cloud di AWS)',
    pathParent: [
      PathParent.backEndJavaScript,
      PathParent.devOps,
    ],
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 40,
    totalStudents: 14115,
    totalModules: 0,
    rating: 4.84,
    progress: 0,
    description: 'Amazon Web Services (AWS) adalah platform cloud paling komprehensif dan digunakan secara luas di dunia. AWS telah dipercaya oleh jutaan pelanggan dari semua kalangan. Baik startup, perusahaan besar, dan lembaga pemerintah terkemuka telah menggunakan AWS untuk menghemat, menjadi lebih tangkas, dan berinovasi lebih cepat. Oleh karena itu, pahami dan kuasailah cara membangun arsitektur di AWS agar Anda mampu membangun arsitektur yang andal, aman, dan optimal; sekaligus menambah nilai bisnis bagi perusahaan.',
    banner: 'https://pikaso.cdnpk.net/private/production/1235475382/render.jpeg?token=exp=1763078400~hmac=5bbf9761e182395d891f09998ba3c272c62671608830ff024fc616336ee43a0e',
    technology: [
       Technology.backEndJavaScript,
       Technology.devOps,
    ],
    reviewersPhoto: [
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740'
    ],
    isBookmark: false,
  ),

  CourseModel(
    name: 'Menjadi Node.js Application Developer',
    pathParent: [
      PathParent.backEndJavaScript,
    ],
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 57,
    totalStudents: 996,
    totalModules: 0,
    rating: 4.81,
    progress: 0,
    description: 'Node.js merupakan teknologi yang mampu membuat JavaScript berjalan di luar browser. Dengan begitu, popularitas JavaScript kian melejit. Sudah banyak perusahaan besar yang mengandalkan Node.js dalam membangun produk digital. Node.js sendiri memiliki API yang sangat luas sehingga menguasainya adalah hal yang menantang. Di kelas ini, Anda akan belajar banyak inti dari Node.js untuk membangun berbagai macam aplikasi hingga mengantarkan Anda untuk menjadi Node.js Application Developer yang andal.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159864215/render.jpeg?token=exp=1763078400~hmac=547f254984837f276275d7e3018be454efe2779a28e930b549ad57fb1a6355b5',
    technology: [
       Technology.backEndJavaScript,
    ],
    reviewersPhoto: [
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740'
    ],
    isBookmark: false,
  ),

  CourseModel(
    name: 'Belajar Fundamental Back-End dengan JavaScript',
    pathParent: [
      PathParent.backEndJavaScript,
      PathParent.devOps,
    ],
    courseLevel: CourseLevel.intermediate,
    averageTimeToFinish: 90,
    totalStudents: 6721,
    totalModules: 0,
    rating: 4.89,
    progress: 0,
    description: 'Back-End Developer memiliki peran penting dalam membangun sistem aplikasi, karena ia bertanggung jawab membuat service yang dapat mengelola serta mengamankan data yang digunakan oleh suatu aplikasi. Pengelolaan yang tidak baik dan tidak aman akan menimbulkan banyak kerugian bagi perusahaan, bahkan bisa memicu kebangkrutan. Kelas ini membahas tuntas materi dalam membangun RESTful service yang canggih dan aman seperti database, storage, hingga authentication, dan authorization.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159958618/render.jpeg?token=exp=1763078400~hmac=59bcfd119b6202fd5cfb0c60d736598bc3a9baa73233af94e228215a4e0b1d8b',
    technology: [
       Technology.backEndJavaScript,
       Technology.devOps,
    ],
    reviewersPhoto: [
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740'
    ],
    isBookmark: false,
  ),

  CourseModel(
    name: 'Menjadi Back-End Developer Expert dengan JavaScript',
    pathParent: [
      PathParent.backEndJavaScript,
      PathParent.devOps,
    ],
    courseLevel: CourseLevel.advanced,
    averageTimeToFinish: 82,
    totalStudents: 3671,
    totalModules: 0,
    rating: 4.90,
    progress: 0,
    description: 'Seiring perkembangan bisnis, semakin banyak data yang disimpan oleh perusahaan. Data pada sistem aplikasi dikelola oleh Back-End Developer dan disimpan pada server. Sebagai Back-End Developer, pastikan service yang dibuat sudah menerapkan best practice yang ada. Dengan begitu service akan selalu berjalan dengan baik dan selalu mudah untuk dikembangkan. Materi di kelas ini membahas bagaimana cara menerapkan best practice dalam membangun Back-End Service yang testable, scalable, reliable dan agile.',
    banner: 'https://pikaso.cdnpk.net/private/production/1159958634/render.jpeg?token=exp=1763078400~hmac=be1a4ec6221d84828fbbce62887563a1ecdcc01852e382a83952cf57d86a2e8c',
    technology: [
       Technology.backEndJavaScript,
       Technology.devOps,
    ],
    reviewersPhoto: [
      'https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg?t=st=1733929804~exp=1733933404~hmac=cbb3d9cd256b31474841b3f7e63ed9309c03c294b78a6b4fdf054570b930a9c5&w=740'
    ],
    isBookmark: false,
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
    banner: "assets/images/path_1.png",
    colorList: [
      const Color(0xffdddce1),
      const Color(0xff322d9b)
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.multiPlatform))
        .toList(),
  ),
  LearningPath(
    path: PathParent.backEndJavaScript,
    desc: "Kurikulum disusun oleh Dicoding bersama AWS beserta pelaku industri Back-End Development. Siswa dipersiapkan untuk menjadi Back-End Developer dengan JavaScript sesuai kebutuhan industri.",
    banner: "assets/images/path_3.png",
    colorList: [
      const Color(0xffdddce1),
      const Color(0xff898686),
      const Color(0xffca6035),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.backEndJavaScript))
        .toList(),
  ),
  LearningPath(
    path: PathParent.ios,
    desc: "Kurikulum disusun oleh Dicoding dan pelaku industri di bidang iOS Development. Siswa dipersiapkan untuk menjadi iOS Developer sesuai standar kebutuhan industri.",
    banner: "assets/images/path_2.png",
    colorList: [
      const Color(0xffdddce1),
      const Color(0xffba7b16),
      const Color(0xffc5b173),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.ios))
        .toList(),
  ),
  LearningPath(
    path: PathParent.machineLearning,
    desc: "Kurikulum lengkap yang disusun oleh Dicoding bersama IBM beserta pelaku industri. Siswa dipersiapkan untuk menjadi Machine Learning Engineer sesuai standar kebutuhan industri.",
    banner: 'assets/images/path_4.png',
    colorList: [
      const Color(0xffdddce1),
      const Color(0xffd9696e),
      const Color(0xffe2512c),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.machineLearning))
        .toList(),
  ),
  LearningPath(
    path: PathParent.android,
    desc: "Kurikulum didesain dengan persetujuan dari Tim Google Android untuk mempersiapkan developer Android standar Global. Dicoding adalah Google Developer Authorized Training Partner.",
    banner: 'assets/images/path_5.png',
    colorList: [
      const Color(0xffd3d1d4),
      const Color(0xff5d5d67),
      const Color(0xff0918cb),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.android))
        .toList(),
  ),
  LearningPath(
    path: PathParent.devOps,
    desc: "Kurikulum lengkap yang didesain oleh tim expert Dicoding bersama para praktisi industri. Siswa dipersiapkan untuk menjadi seorang DevOps Engineer berstandar global.",
    banner: 'assets/images/path_6.png',
    colorList: [
      const Color(0xffd3d1d4),
      const Color(0xfff05684),
      const Color(0xff425b86),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.devOps))
        .toList(),
  ),
  LearningPath(
    path: PathParent.frontEndWeb,
    desc: "Kurikulum disusun oleh Dicoding dan pelaku industri di bidang Web Development. Siswa dipersiapkan untuk menjadi Front-End Web Developer sesuai standar kebutuhan industri.",
    banner: 'assets/images/path_7.png',
    colorList: [
      const Color(0xffdddce1),
      const Color(0xff4b638f),
      const Color(0xff09a2b1),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.machineLearning))
        .toList(),
  ),
  LearningPath(
    path: PathParent.react,
    desc: "Kurikulum lengkap yang didesain oleh tim expert Dicoding bersama para praktisi industri. Siswa dipersiapkan untuk menjadi seorang React Developer berstandar global.",
    banner: 'assets/images/path_8.png',
    colorList: [
      const Color(0xffdddce1),
      const Color(0xff435b87),
      const Color(0xfff6c850),
    ],
    courseList: courseList
        .where((course) => course.pathParent.contains(PathParent.android))
        .toList(),
  ),
];