import 'package:ecommerce/core/constant/apptheme.dart';
import 'package:ecommerce/core/constant/router.dart';
import 'package:ecommerce/core/service/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  goToOnboarding() {
    Get.offNamed(AppRoute.onBoarding);
  }

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
