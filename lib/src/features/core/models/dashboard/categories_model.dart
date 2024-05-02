import 'package:flutter/material.dart';

class DashboardCategories {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onTap;

  DashboardCategories(this.title,this.heading, this.subHeading, this.onTap, );

  static List<DashboardCategories> list = [
    DashboardCategories("JS","Java Script", "10 Lessons", null),
    DashboardCategories("F","Flutter dev", "8 Lessons", null),
    DashboardCategories("Java","Java", "10 Lessons", null),
    DashboardCategories("HTML","HTML", "5 Lessons", null),
    DashboardCategories("Android","Android dev", "10 Lessons", null),
  ];

}
