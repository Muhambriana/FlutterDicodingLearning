import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/ui/course/list/course_list_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';

class LearningPathGrid extends StatelessWidget {

  const LearningPathGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          int getItemCount () {
            if (constraints.maxWidth <= 600) {
              return 2;
            } else if (constraints.maxWidth <= 1200) {
              return 3;
            } else {
              return 4;
            }
          }
          return SizedBox(
            child: MasonryGridView.count(
              shrinkWrap: constraints.maxWidth <= 600 ? false : true,
              physics: constraints.maxWidth <= 600 ? null : const NeverScrollableScrollPhysics(),
              crossAxisCount: getItemCount(),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              itemCount: learningPathList.length,
              itemBuilder: (context, index) {
                final learningPath = learningPathList[index];

                // Determine the size of the tile based on the index
                final isLongTile = index % 2 == 0;

                return _buildGridListContent(isLongTile, learningPath, getItemCount());
              },
            ),
          );
        }
    );
  }

  Widget _buildGridListContent(bool isLongTile, LearningPath learningPath, int totalItemCount) {
    double getHeight() {
      if (totalItemCount == 2) {
        return isLongTile ? 220 : 180;
      } else if (totalItemCount == 3) {
        return isLongTile ? 370 : 330;
      } else {
        return isLongTile ? 520 : 480;
      }
    }
    return Builder(
        builder: (context) {
          return SizedBox(
            height: getHeight(),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CourseListPage(learningPath: learningPath);
                }));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        learningPath.banner,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.height,
                          height: 60,
                          color: Colors.black.withOpacity(0.8),
                          child: Center(
                            child: Text(
                              "${learningPath.path.name} Developer",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
    );
  }
}