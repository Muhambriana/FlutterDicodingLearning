import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/ui/course/list/course_list_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';

class LearningPathGrid extends StatelessWidget {
  final int itemCount;

  const LearningPathGrid({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: MasonryGridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: itemCount,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: learningPathList.length,
        itemBuilder: (context, index) {
          // Determine the size of the tile based on the index
          final isLongTile = index % 2 == 0;
          final learningPath = learningPathList[index];

          return _buildGridListContent(isLongTile, learningPath);
        },
      ),
    );
  }

  Widget _buildGridListContent(bool isLongTile, LearningPath learningPath) {
    return Builder(
        builder: (context) {
          return SizedBox(
            height: isLongTile ? Utils.getHeightByDevice(context, 0.25) : Utils.getHeightByDevice(context, 0.20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CourseListPage(learningPath: learningPath);
                }));
              },
              child: Card(
                margin:  EdgeInsets.zero,
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
                          width: MediaQuery.of(context).size.width,
                          height: Utils.getHeightByDevice(context, 0.06),
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