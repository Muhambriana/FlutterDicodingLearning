import 'package:flutter/material.dart';
import 'package:flutter_dicoding_learning/utils/app_colors.dart';

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
    return Material(
      color: AppColors.primaryBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          child: Icon(
            isBookmark ? Icons.bookmark_added_rounded : Icons.bookmark_add_outlined,
            color: Colors.white,
            size: widget.iconSize ?? 24,
          ),
        ),
      ),
    );
  }
}
