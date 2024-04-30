import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:login_firebase_complete/src/constants/colors.dart';
import 'package:login_firebase_complete/src/constants/image_strings.dart';
import 'package:login_firebase_complete/src/constants/sizes.dart';
import 'package:login_firebase_complete/src/constants/text_strings.dart';
import 'package:login_firebase_complete/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:login_firebase_complete/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => AnimatedPositioned(
              top: 0,
              left: splashController.animate.value ? 0 : -50,
              duration: Duration(milliseconds: 2000),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2200),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image(image: AssetImage(tSplashTopIcon),height: 50,width: 50,),
              ),
            )),
            Obx(() => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 80,
                left: splashController.animate.value ? tDefaultSize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.headline3,
                      )
                    ],
                  ),
                ))),
            Obx(() => AnimatedPositioned(
                  bottom: 150,
                  left: splashController.animate.value ? 10 : -50,
                  duration: Duration(milliseconds: 2400),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Image(image: AssetImage(tSplashImage),height: 350,width: 350,),
                  ),
                )),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 60 : 0,
                right: tDefaultSize,
                child: Container(
                    width: tSplashContainerSize,
                    height: tSplashContainerSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
