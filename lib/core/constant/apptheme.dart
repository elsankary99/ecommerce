import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      titleSmall: TextStyle(height: 2, fontSize: 16, color: AppColor.grey),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ));

ThemeData themeArabic = ThemeData(
    fontFamily: "Cairo",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      titleSmall: TextStyle(height: 2, fontSize: 16, color: AppColor.grey),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ));
