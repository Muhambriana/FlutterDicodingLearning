import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../models/course.dart';
import '../../../utils/strings.dart';
import '../../../ui/course/detail/bookmark_button.dart';
import '../../../utils/helper.dart';

class DetailWebPage extends StatefulWidget {
  final CourseModel course;

  const DetailWebPage({super.key, required this.course});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  Strings.appName,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(widget.course.banner),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(
                                dragDevices: {
                                  PointerDeviceKind.touch,
                                  PointerDeviceKind.mouse
                                }),
                            child: Scrollbar(
                              controller: _scrollController,
                              child: Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ListView(
                                  controller: _scrollController,
                                  scrollDirection: Axis.horizontal,
                                  children:
                                  widget.course.reviewersPhoto.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  widget.course.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.calendar_today),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.course.name,
                                        style: Utils.getInformationTextStyle(),
                                      )
                                    ],
                                  ),
                                  const BookmarkButton()
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.access_time),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    widget.course.name,
                                    style: Utils.getInformationTextStyle(),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    widget.course.name,
                                    style: Utils.getInformationTextStyle(),
                                  )
                                ],
                              ),
                              Container(
                                padding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.course.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}