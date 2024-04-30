import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image),
            height: size.height * 0.45,),
          Column(
            children: [
              Text(model.title,style: const TextStyle(color: Colors.black87,fontSize: 29)),
              Text(model.subTitle,textAlign: TextAlign.center,style: const TextStyle(color: Colors.black87),)
            ],
          ),
          Text(model.counterText,style: const TextStyle(color: Colors.black54,fontSize: 19)),
          const SizedBox(height: 50.0)
        ],
      ),
    );
  }
}
