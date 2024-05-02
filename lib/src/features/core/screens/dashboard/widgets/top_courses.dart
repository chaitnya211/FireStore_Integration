import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';

class TopCoursesWidget extends StatelessWidget {
  const TopCoursesWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text("Flutter crash course",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Flexible(
                            child: Image(
                              image: AssetImage(
                                  "assets/dashboard_images/dashboard_image3.jpg"),
                              height: 100,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                    const SizedBox(width: tDashboardCardPadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Sections",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Programming Languages",
                          style: TextStyle(fontSize: 13,color: Colors.grey.shade800),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text("HTML Crash Course",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Flexible(
                            child: Image(
                              image: AssetImage(
                                  "assets/dashboard_images/dashboard_image3.jpg"),
                              height: 100,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                    const SizedBox(width: tDashboardCardPadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2 Sections",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Programming Languages",
                          style: TextStyle(fontSize: 13,color: Colors.grey.shade800),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text("Java crash course",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Flexible(
                            child: Image(
                              image: AssetImage(
                                  "assets/dashboard_images/dashboard_image3.jpg"),
                              height: 100,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                    const SizedBox(width: tDashboardCardPadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4 Sections",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Programming Languages",
                          style: TextStyle(fontSize: 13,color: Colors.grey.shade800),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}