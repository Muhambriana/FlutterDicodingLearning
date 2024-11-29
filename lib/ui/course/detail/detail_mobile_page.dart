import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/course.dart';
import '../../../ui/course/detail/back_button.dart';
import '../../../ui/course/detail/bookmark_button.dart';
import '../../../utils/helper.dart';

var bigSizeText = 25.0;
var middleSizeText = 20.0;
var smallSizeText = 16.0;

class DetailMobilePage extends StatelessWidget {
  final CourseModel course;

  const DetailMobilePage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    _buildBannerAndBackButton(context),
                    _buildGradientSection(context, constraints, course),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBannerAndBackButton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Image.network(course.banner),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonDicoding(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientSection(
      BuildContext context, BoxConstraints constraints, CourseModel course) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.only(top: Utils.getHeightByDevice(context, 0.4)),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff353f53), Color(0xff212734)]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                  ),
                  child: _contentWidget(course),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contentWidget(CourseModel course) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BookmarkButton(iconSize: 35),
          const SizedBox(height: 10.0),
          Text(
            course.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: bigSizeText,
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.star,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                course.rating.toString(),
                style: TextStyle(
                  fontSize: smallSizeText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.clock,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "${course.averageTimeToFinish} Jam",
                style: TextStyle(
                  fontSize: smallSizeText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.medal,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                course.courseLevel.name,
                style: TextStyle(
                  fontSize: smallSizeText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.peopleGroup,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text("${course.totalStudents} Siswa Terdaftar"),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              const Text(
                "Technology:",
                style: TextStyle(
                  fontSize: 15,
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
                        .map((techName) => _ListTechnology(techName: techName))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Row(
            children: [
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            course.description,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoColumn({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 8.0),
        Text(label,
            textAlign: TextAlign.center,
            style: Utils.getInformationTextStyle()),
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
