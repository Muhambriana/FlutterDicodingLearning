import 'package:carousel_slider/carousel_slider.dart';
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
                padding: EdgeInsets.only(top: Utils.getHeightByDevice(context, 0.4)),
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
          _InfoColumn(icon: FontAwesomeIcons.star, label: course.rating.toString()),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.clock, label: "${course.averageTimeToFinish} Jam"),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.medal, label: course.courseLevel.name),
          const SizedBox(height: 10.0),
          _InfoColumn(icon: FontAwesomeIcons.peopleGroup, label: "${course.totalStudents} Siswa Terdaftar"),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "Technology:",
                style: TextStyle(
                  fontSize: middleSizeText,
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
          Row(
            children: [
              Text(
                "Description",
                style: TextStyle(
                  fontSize: middleSizeText,
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
          const SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "Reviewer's",
                style: TextStyle(
                  fontSize: middleSizeText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: _buildCarousel(course.reviewersPhoto),
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
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: smallSizeText,
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

Widget _buildCarousel(List<String> reviewersPhoto) {
  return Builder(
    builder: (context) {
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
    },
  );
}






