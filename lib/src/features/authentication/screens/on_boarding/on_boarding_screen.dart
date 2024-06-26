import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_firebase_complete/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: obController.controller,
            pages: obController.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            waveType: WaveType.circularReveal,
            onPageChangeCallback: obController.onPageChangedCallback,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                obController.animateToNextSlide();
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black87),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(17.5)),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration:
                const BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),));
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Obx( ()=>
            Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }


}
