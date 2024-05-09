import 'package:flutter/material.dart';
import 'package:login_firebase_complete/src/constants/sizes.dart';
import 'package:login_firebase_complete/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:login_firebase_complete/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_firebase_complete/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:login_firebase_complete/src/features/core/screens/dashboard/widgets/top_courses.dart';

import '../../../../constants/text_strings.dart';
import 'widgets/appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tDashboardTitle,
                style: textTheme.bodyText2,
              ),
              Text(tDashboardHeading, style: TextStyle(color: Colors.black87,fontSize: 35,)),
              const SizedBox(height: tDashboardPadding),

              // Search Bar
              SearchBarWidget(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),

              // Categories
              CategoriesWidget(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),

              // Banners
              BannersWidget(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),

              // Top Courses
              Text(
                tDashboardTopCourses,
                style: textTheme.headline4?.apply(fontSizeFactor: 1.2),
              ),
              TopCoursesWidget(textTheme: textTheme),

            ],
          ),
        ),
      ),
    );
  }
}
