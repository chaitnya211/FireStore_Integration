
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase_complete/src/features/authentication/screens/forget_password/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => SingleChildScrollView(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tForgetPasswordTitle,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  tForgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 30.0),
                ForgetPasswordBtnWidget(
                  title: tEmail,
                  subTitle: tResetViaEmail,
                  iconBtn: Icons.email_outlined,
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(() => ForgetPasswordMailScreen());
                  },
                ),
                SizedBox(height: 20),
                ForgetPasswordBtnWidget(
                  title: tPhoneNo,
                  subTitle: tResetViaPhone,
                  iconBtn: Icons.mobile_friendly_outlined,
                  onTap: () {
          
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}