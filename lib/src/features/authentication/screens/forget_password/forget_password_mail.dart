import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase_complete/src/constants/sizes.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
import '../signup/widgets/form_header_widget.dart';
import 'forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4),
                const FormHeaderWidget(
                  image: tForgetPassImage,
                  title: tForgetPasswordTitle,
                  subTitle: tForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                    child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(tEmail),
                        hintText: tEmail,
                        prefixIcon: Icon(Icons.mail_outline_rounded)),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const OTPScreen());
                          },
                          child: const Text("Next"))),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
