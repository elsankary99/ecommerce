import 'package:ecommerce/controller/onboardin_controller/onboarng_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 30),
          Text(
            onboardingList[i].title!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 65),
          Image.asset(
            onboardingList[i].image!,
            height: 250,
            width: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 65),
          Text(onboardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
    );
  }
}
