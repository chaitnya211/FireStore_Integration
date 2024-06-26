import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.title,
    required this.subTitle,
    required this.iconBtn,
    required this.onTap,
    super.key,
  });

  final IconData iconBtn;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200,
          ),
          child: Row(
            children: [
              Icon(iconBtn,color: Colors.black, size: 60.0),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 20,color: Colors.black54)),
                  Text(
                    subTitle,
                    style: TextStyle(fontSize: 12,color: Colors.black54),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
