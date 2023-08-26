import 'package:ecommerce/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
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
          "Reset Password",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(children: [
          const SizedBox(height: 15),
          const CustomTextBodyAuth(
            titleLarge: "New Password",
            titleSmall: "Please Enter new Password",
          ),
          const SizedBox(height: 30),
          CustomTextFormAuth(
            controller: controller.password,
            labelText: "Password",
            hintText: "Enter Your Password",
            icon: Icons.lock_outline,
          ),
          CustomTextFormAuth(
            controller: controller.rePassword,
            labelText: "Password",
            hintText: "RE Enter Your Password",
            icon: Icons.lock_outline,
          ),
          const SizedBox(height: 15),
          CustomButtonAuth(
            text: "Save",
            onPressed: () {
              controller.goToSuccessResetPassword();
            },
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}
