import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../utils/data_sample.dart';

class CarouselNews extends StatelessWidget {
  const CarouselNews({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double? getHeight() {
            if (constraints.maxWidth <= 1240) {
              return null;
            } else if (constraints.maxWidth <= 1480) {
              return 500;
            } else if (constraints.maxWidth <= 1710) {
              return 600;
            } else {
              return 700.0;
            }
          }

          double getViewPortFraction() {
            if (constraints.maxWidth <= 1200) {
              return 1;
            } else {
              return 0.7;
            }
          }

          return CarouselSlider.builder(
            itemCount: newsBanner.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(newsBanner[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: getHeight(),
              enlargeCenterPage: true,
              autoPlay: true,
              viewportFraction: getViewPortFraction(),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          );
        }
    );
  }
}
