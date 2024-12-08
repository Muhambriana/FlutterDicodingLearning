import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/ui/course/list/course_list_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../utils/data_sample.dart';

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
        return isLongTile ? 240 : 200;
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
              child: CardContent(learningPath: learningPath, totalItemCount: totalItemCount, isLongTile: isLongTile,)
            ),
          );
        }
    );
  }
}

class CardContent extends StatelessWidget {
  final LearningPath learningPath;
  final int totalItemCount;
  final bool isLongTile;

  const CardContent({super.key, required this.learningPath, required this.totalItemCount, required this.isLongTile});

  @override
  Widget build(BuildContext context) {
    double getHeight() {
      if (totalItemCount == 2) {
        return isLongTile ? 150 : 120;
      } else if (totalItemCount == 3) {
        return isLongTile ? 280 : 240;
      } else {
        return 300;
      }
    }
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: learningPath.colorList),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Constrained text width with alignment to the start
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 100),
                child: Text(
                  learningPath.path.name,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10), // Space between text and image
              // Centered image
              Center(
                child: Image.asset(
                  learningPath.banner,
                  height: getHeight(),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}