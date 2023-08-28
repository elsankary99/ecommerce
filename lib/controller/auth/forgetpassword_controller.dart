import 'package:ecommerce/core/constant/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verifyCode);
      print("+======Success======+");
    } else {
      print("+======Failure======+");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
