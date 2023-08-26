import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        centerTitle: true,
        title: Text(
          "sign_up".tr,
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
          CustomTextBodyAuth(
              titleLarge: "welcome_back".tr, titleSmall: 'sign_in_with_email'.tr
              // "Sign Up With Your Email And Password \n OR Continue With Social Media",
              ),
          const SizedBox(height: 30),
          CustomTextFormAuth(
            controller: controller.userName,
            labelText: "username".tr,
            hintText: "Enter Your Username",
            icon: Icons.person_3_outlined,
          ),
          CustomTextFormAuth(
            controller: controller.email,
            labelText: "email".tr,
            hintText: "enter_your_email".tr,
            icon: Icons.email_outlined,
          ),
          CustomTextFormAuth(
            controller: controller.phone,
            labelText: "Phone",
            hintText: "Enter Your Phone",
            icon: Icons.phone_android_outlined,
          ),
          CustomTextFormAuth(
            controller: controller.password,
            labelText: "password".tr,
            hintText: "enter_your_password".tr,
            icon: Icons.lock_outlined,
          ),
          CustomButtonAuth(
            text: "sign_up".tr,
            onPressed: () {
              controller.signUp();
            },
          ),
          const SizedBox(height: 30),
          CustomTextSignUpOrSignIn(
            onTap: () {
              controller.goToSignIn();
            },
            textOne: "already_have_an_account".tr,
            textTwo: 'sign_in'.tr,
          )
        ]),
      ),
    );
  }
}
