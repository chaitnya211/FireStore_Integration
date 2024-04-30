import 'package:flutter/material.dart';
import 'package:login_firebase_complete/src/constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
