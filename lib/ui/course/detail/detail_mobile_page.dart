import 'package:flutter/material.dart';
import '../../../models/course.dart';
import '../../../utils/helper.dart';
import '../../../ui/course/detail/bookmark_button.dart';
import '../../../ui/course/detail/back_button.dart';


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
                    _buildGradientSection(constraints, course),
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
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonDicoding(),
                  BookmarkButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientSection(BoxConstraints constraints, CourseModel course) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff353f53), Color(0xff212734)]
                    ),
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
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _InfoColumn(
              icon: Icons.star_rate,
              label: course.rating.toString()),
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
        Text(label, textAlign: TextAlign.center, style: Utils.getInformationTextStyle()),
      ],
    );
  }
}