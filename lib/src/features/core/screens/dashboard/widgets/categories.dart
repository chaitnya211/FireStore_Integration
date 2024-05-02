import 'package:flutter/material.dart';
import 'package:login_firebase_complete/src/features/core/models/dashboard/categories_model.dart';

import '../../../../../constants/colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategories.list;
    return SizedBox(
      height: 49,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onTap,
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tDarkColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Center(
                      child: Text(list[index].title,
                          style: textTheme.headline6
                              ?.apply(color: Colors.white),overflow: TextOverflow.ellipsis,),
                    ),
                  ),
                ),
                const SizedBox(width: 9),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,
                          style: textTheme.headline6,
                          overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading,
                          style: textTheme.bodyText2,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

