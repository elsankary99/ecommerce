import 'package:ecommerce/controller/onboardin_controller/onboarng_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: ElevatedButton(
          onPressed: () {
            controller.next();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            'continue'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
