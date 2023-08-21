import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: PageView.builder(
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
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 65),
            Text(
              onboardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2, fontSize: 16, color: AppColor.grey),
            ),
          ],
        ),
      )),
    );
  }
}
