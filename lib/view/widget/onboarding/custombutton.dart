import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: const Text('continue')),
    );
  }
}
