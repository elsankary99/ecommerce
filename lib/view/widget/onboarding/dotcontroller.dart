import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onboardingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(microseconds: 600),
            height: 6,
            width: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColor.primaryColor),
          ),
        ),
      ],
    );
  }
}
