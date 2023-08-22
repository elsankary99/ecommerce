import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 30),
          Text(
            onboardingList[i].title!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 65),
          Image.asset(
            onboardingList[i].image!,
            height: 250,
            width: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 65),
          Text(
            onboardingList[i].body!,
            textAlign: TextAlign.center,
            style:
                const TextStyle(height: 2, fontSize: 16, color: AppColor.grey),
          ),
        ],
      ),
    );
  }
}
