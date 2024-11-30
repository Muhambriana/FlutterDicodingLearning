import 'package:flutter/material.dart';

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
    return IconButton(
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        icon: Icon(
          isBookmark ? Icons.bookmark_added_rounded : Icons.bookmark_add_outlined,
          color: Colors.white,
          size: widget.iconSize,
        ));
  }
}