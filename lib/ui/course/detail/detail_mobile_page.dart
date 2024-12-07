
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/ui/course/widget/technology_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/course.dart';
import '../../../utils/app_colors.dart';
import '../widget/bookmark_button.dart';
import '../../../utils/helper.dart';
import 'package:flutter_dicoding_learning/utils/config/config.dart';
import '../widget/back_button.dart';
import '../widget/carousel_reviewers.dart';
import '../widget/column_info.dart';

class DetailMobilePage extends StatefulWidget {
  final CourseModel course;

  const DetailMobilePage({super.key, required this.course});

  @override
  State<DetailMobilePage> createState() => _DetailMobilePageState();
}

class _DetailMobilePageState extends State<DetailMobilePage> {

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
                    _buildGradientSection(context, constraints, widget.course),
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
          Image.network(widget.course.banner),
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

  Widget _buildGradientSection(BuildContext context, BoxConstraints constraints, CourseModel course) {
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
          const SizedBox(height: 30.0),
          Text(
            course.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Config.bigSizeText,
            ),
          ),
          const SizedBox(height: 40.0),
          ColumnInfo(icon: FontAwesomeIcons.star, label: course.rating.toString(), iconColor: Colors.amber,),
          const SizedBox(height: 10.0),
          ColumnInfo(icon: FontAwesomeIcons.clock, label: "${course.averageTimeToFinish} Jam"),
          const SizedBox(height: 10.0),
          ColumnInfo(icon: FontAwesomeIcons.medal, label: course.courseLevel.name),
          const SizedBox(height: 10.0),
          ColumnInfo(icon: FontAwesomeIcons.book, label: "${course.totalModules} Modul Belajar"),
          const SizedBox(height: 10.0),
          ColumnInfo(icon: FontAwesomeIcons.peopleGroup, label: "${course.totalStudents} Siswa Terdaftar"),
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
                        .map((techName) => TechnologyList(techName: techName.name))
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
          const SizedBox(height: 10.0),
          Expanded(
            child: CarouselReviewers(reviewersPhoto: course.reviewersPhoto,),
          ),
        ],
      ),
    );
  }
}