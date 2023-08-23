import 'package:ecommerce/core/constant/router.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  //!/next
  @override
  next() {
    currentPage++;
    if (currentPage > onboardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  //!/onPageChanged
  @override
  onPageChanged(int index) {
    currentPage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
