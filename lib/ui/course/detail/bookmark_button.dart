import 'dart:ffi';

import 'package:flutter/material.dart';

class BookmarkButton extends StatefulWidget {
  final double? iconSize;
  const BookmarkButton({this.iconSize, super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

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