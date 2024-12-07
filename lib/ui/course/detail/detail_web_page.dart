
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/course.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/strings.dart';
import '../widget/bookmark_button.dart';
import '../../../utils/helper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/utils/app_colors.dart';
import 'package:flutter_dicoding_learning/utils/config/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/course.dart';
import '../widget/back_button.dart';
import '../widget/bookmark_button.dart';
import '../../../utils/helper.dart';

class DetailWebPage extends StatefulWidget {
  final CourseModel course;

  const DetailWebPage({super.key, required this.course});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 1200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: LeftSectionContent(course: widget.course),
                          ),
                          const SizedBox(width: 50.0),
                          Expanded(
                              child: RightSectionContent(course: widget.course)
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


class _InfoColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? iconColor;

  const _InfoColumn({required this.icon, required this.label, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor ?? Colors.white,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: Config.smallSizeText,
          ),
        ),
      ],
    );
  }
}

class _ListTechnology extends StatelessWidget {
  final String techName;

  const _ListTechnology({required this.techName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: AppColors.primaryBlue,
            width: 2.5,
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              techName,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LeftSectionContent extends StatelessWidget {
  final CourseModel course;
  
  const LeftSectionContent({required this.course, super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(course.banner)
        ),
        const SizedBox(height: 20.0),
        Text(
          course.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: Config.bigSizeText,
          ),
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            Text(
              "Description",
              style: TextStyle(
                fontSize: Config.middleSizeText,
                color: AppColors.nonPrimaryText,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Text(
          course.description,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.nonPrimaryText,
          ),
        ),
      ],
    );
  }}

class RightSectionContent extends StatelessWidget {
  final CourseModel course;

  const RightSectionContent({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff353f53), Color(0xff212734)]),
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
          child: _contentWidget(course),
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            Text(
              "Reviewer's",
              style: TextStyle(
                fontSize: Config.middleSizeText,
              ),
            ),
          ],
        ),
        CarouselReviewers(reviewersPhoto: course.reviewersPhoto,)
      ],
    );
  }

  Widget _contentWidget(CourseModel course) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                  FontAwesomeIcons.route
              ),
              const SizedBox(width: 10.0),
              Expanded(
                flex: 8,
                child: Text(
                  course.pathParent.map((e) => e.name).join(', '),
                  style: const TextStyle(color: AppColors.nonPrimaryText,),
                ),
              ),
              Expanded(
                flex: 2,
                child: BookmarkButton(
                  iconSize: 35,
                  isBookmark: course.isBookmark,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          _InfoColumn(icon: FontAwesomeIcons.star, label: course.rating.toString(), iconColor: Colors.amber,),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.clock, label: "${course.averageTimeToFinish} Jam"),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.medal, label: course.courseLevel.name),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.book, label: "${course.totalModules} Modul Belajar"),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.peopleGroup, label: "${course.totalStudents} Siswa Terdaftar"),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "Technology:",
                style: TextStyle(
                  fontSize: Config.middleSizeText,
                  color: AppColors.nonPrimaryText,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: course.technology
                        .map((techName) => _ListTechnology(techName: techName.name))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CarouselReviewers extends StatelessWidget {
  final List<String> reviewersPhoto;

  const CarouselReviewers({required this.reviewersPhoto, super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: reviewersPhoto.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(reviewersPhoto[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: Utils.getHeightByDevice(context, 0.15),
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 0.3,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}

