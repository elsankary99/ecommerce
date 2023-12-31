import 'package:ecommerce/core/constant/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.successResetPassword);
      print("+======Success======+");
    } else {
      print("+======Failure======+");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
