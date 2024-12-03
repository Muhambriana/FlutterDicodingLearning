import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/models/learning_path.dart';
import 'package:flutter_dicoding_learning/ui/course/list/course_list_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../utils/data_sample.dart';
import '../../../utils/helper.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.fromLTRB(
            Utils.getWidthByDevice(context, 0.045),
            Utils.getHeightByDevice(context, 0.02),
            Utils.getWidthByDevice(context, 0.045),
            0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppBar(),
            Utils.getSizeBoxAsMarginY(context, 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey, ${user.fullName}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Learn new Skills today!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
            Utils.getSizeBoxAsMarginY(context, 0.02),
            const CarouselNews(),
            Utils.getSizeBoxAsMarginY(context, 0.02),
            const Expanded(
                child: LearningPathGrid(itemCount: 2)
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIconNotification(true),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(user.photoProfile),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconNotification(bool hasUnreadNotifications) {
    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {

          },
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Icon(
                  Icons.notifications,
                  size: 24,
                  color: Colors.white,
                ),
              ),
              if (hasUnreadNotifications)
                const Positioned(
                  top: 4.0,
                  right: 4.0,
                  child: CircleAvatar(
                    radius: 4.0,
                    backgroundColor: Colors.white,
                  ),
                ),
            ],
          ),
        );
      }
    );
  }
}

class CarouselNews extends StatelessWidget {
  const CarouselNews({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: newsBanner.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: Utils.getWidthByDevice(context, 0.01)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(newsBanner[index]),
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: Utils.getHeightByDevice(context, 0.200),
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 0.95,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}

class LearningPathGrid extends StatelessWidget {
  final int itemCount;

  const LearningPathGrid({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
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






