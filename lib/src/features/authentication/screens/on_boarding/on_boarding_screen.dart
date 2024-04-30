import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_firebase_complete/src/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: tOnBoardingPage1Color,
                child: Column(
                  children: [

                  ],
                ),
              ),
              Container(color: tOnBoardingPage2Color),
              Container(color: tOnBoardingPage3Color),
            ],
          )
        ],
      ),
    );
  }
}
