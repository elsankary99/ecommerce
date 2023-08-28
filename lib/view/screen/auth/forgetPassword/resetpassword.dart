import 'package:ecommerce/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        centerTitle: true,
        title: Text(
          "reset_password".tr,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Form(
          key: controller.formState,
          child: ListView(children: [
            const SizedBox(height: 15),
            CustomTextBodyAuth(
              titleLarge: "new_password".tr,
              titleSmall: "please_enter_new_password".tr,
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
              validator: (val) {
                return validInput(val!, 5, 100, "password");
              },
              controller: controller.password,
              labelText: "password".tr,
              hintText: "enter_your_password".tr,
              icon: Icons.lock_outline,
            ),
            CustomTextFormAuth(
              validator: (val) {
                return validInput(val!, 5, 100, "password");
              },
              controller: controller.rePassword,
              labelText: "password".tr,
              hintText: "re_enter_your_password".tr,
              icon: Icons.lock_outline,
            ),
            const SizedBox(height: 15),
            CustomButtonAuth(
              text: "save".tr,
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            const SizedBox(height: 30),
          ]),
        ),
      ),
    );
  }
}
