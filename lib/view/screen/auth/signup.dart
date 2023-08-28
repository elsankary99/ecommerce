import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/validinput.dart';
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
        child: Form(
          key: controller.formState,
          child: ListView(children: [
            const SizedBox(height: 15),
            CustomTextBodyAuth(
                titleLarge: "welcome_back".tr,
                titleSmall: 'sign_in_with_email'.tr
                // "Sign Up With Your Email And Password \n OR Continue With Social Media",
                ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
              validator: (val) {
                return validInput(val!, 5, 40, "username");
              },
              controller: controller.userName,
              labelText: "username".tr,
              hintText: "enter_your_username".tr,
              icon: Icons.person_3_outlined,
            ),
            CustomTextFormAuth(
              validator: (val) {
                return validInput(val!, 5, 100, "email");
              },
              controller: controller.email,
              labelText: "email".tr,
              hintText: "enter_your_email".tr,
              icon: Icons.email_outlined,
            ),
            CustomTextFormAuth(
              validator: (val) {
                return validInput(val!, 7, 11, "phone");
              },
              controller: controller.phone,
              labelText: "phone".tr,
              hintText: "enter_your_phone".tr,
              icon: Icons.phone_android_outlined,
            ),
            CustomTextFormAuth(
              validator: (val) {
                return validInput(val!, 5, 40, "password");
              },
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
      ),
    );
  }
}
