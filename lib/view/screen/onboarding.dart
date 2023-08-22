import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce/view/widget/onboarding/customslider.dart';
import 'package:ecommerce/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomDotControllerOnBoarding(),
                CustomButtonOnBoarding()
              ],
            ),
          )
        ],
      )),
    );
  }
}
