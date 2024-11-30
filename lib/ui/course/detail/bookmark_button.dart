import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/utils/app_colors.dart';
import 'package:flutter_dicoding_learning/utils/widget/dicoding_button.dart';

class BookmarkButton extends StatefulWidget {
  final double? iconSize;
  final bool? isBookmark;

  const BookmarkButton({this.iconSize, this.isBookmark, super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  late bool isBookmark;

  @override
  void initState() {
    super.initState();
    isBookmark = widget.isBookmark ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return DicodingButton(
      onTap: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
      icon: isBookmark ? Icons.bookmark_added_rounded : Icons.bookmark_add_outlined,
    );
  }
}
