import 'package:flutter/material.dart';
import '../../../utils/widget/dicoding_button.dart';

class BackButtonDicoding extends StatelessWidget {
  const BackButtonDicoding({super.key});

  @override
  Widget build(BuildContext context) {
    return DicodingButton(
      onTap: Navigator.of(context).pop,
      icon: Icons.arrow_back_ios_new,
    );
  }
}