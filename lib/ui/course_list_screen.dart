import 'package:flutter/material.dart';

import 'course_detail_screen.dart';
import '../models/course.dart';
import '../utils/data_sample.dart';
import '../../utils/strings.dart';
import '../../utils/app_colors.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              Strings.appName,
              style: TextStyle(
                fontFamily: 'Roboto'
              ),
            ),
        ),
        leading: IconButton(
          icon: Icon(Icons.person_2_outlined),
          color: AppColors.primaryColor,
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.logout_outlined),
              color: AppColors.primaryColor,
              onPressed: () {},
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return const CourseList();
        },
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courseList.length,
      itemBuilder: (context, index) {
        return CourseCard(course: courseList[index]);
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  final CourseModel course;

  const CourseCard({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(course: course))
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(course.banner)
                    )
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          course.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rate_outlined,
                              color: AppColors.primaryColor,
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              course.rating.toString(),
                              style: informationTextStyle,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: LinearProgressIndicator(
                                  value: course.progress/100, // Progress value (50%)
                                  color: AppColors.primaryColor,
                                  backgroundColor: Colors.grey.shade300,
                                  minHeight: 10,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Expanded(
                               flex: 1,
                               child: Text(
                                 "${course.progress.toInt()}%",
                                 style: informationTextStyle,
                               )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





