import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tCardBgColor),
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Image(
                            image: AssetImage(
                                "assets/dashboard_images/bookmark.png"),height: 50,width: 40,)),
                    SizedBox(width: 29.0),
                    Flexible(
                        child: Image(
                            image: AssetImage(
                                "assets/dashboard_images/banner_image1.png"))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  tDashboardBannerTitle1,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashboardBannerSubTitle,
                  style: TextStyle(fontSize: 13,color: Colors.grey.shade800),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardCardPadding),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: tCardBgColor,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Image(
                                image: AssetImage(
                                    "assets/dashboard_images/bookmark.png"),height: 50,width: 40,)),
                        SizedBox(width: 29),
                        Flexible(
                            child: Image(
                                image: AssetImage(
                                    "assets/dashboard_images/banner_image2.png"))),
                      ],
                    ),
                    Text(
                      tDashboardBannerTitle2,
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      tDashboardBannerSubTitle,
                      style: TextStyle(fontSize: 13,color: Colors.grey.shade800),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                  width: double.infinity,
                  height: 38,
                  child: OutlinedButton(
                    style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)))),
                      onPressed: () {}, child: Text("View All")))
            ],
          ),
        ),
      ],
    );
  }
}