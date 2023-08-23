import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/router.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            titleSmall:
                TextStyle(height: 2, fontSize: 16, color: AppColor.grey),
            titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: const OnBoarding(),
    );
  }
}
