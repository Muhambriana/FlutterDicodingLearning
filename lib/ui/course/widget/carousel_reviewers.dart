import 'package:flutter/material.dart';
import '../../../utils/helper.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselReviewers extends StatelessWidget {
  final List<String> reviewersPhoto;

  const CarouselReviewers({required this.reviewersPhoto, super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}