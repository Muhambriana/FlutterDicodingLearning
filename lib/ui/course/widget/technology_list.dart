import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class TechnologyList extends StatelessWidget {
  final String techName;

  const TechnologyList({super.key, required this.techName});

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