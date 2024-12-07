import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/utils/config/config.dart';

class ColumnInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? iconColor;

  const ColumnInfo({super.key, required this.icon, required this.label, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor ?? Colors.white,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: Config.smallSizeText,
          ),
        ),
      ],
    );
  }
}