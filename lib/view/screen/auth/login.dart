import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        centerTitle: true,
        title: Text(
          "Sign In",
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
          const LogoAuth(),
          const SizedBox(height: 15),
          CustomTextBodyAuth(
              titleLarge: "welcome_back".tr, titleSmall: 'sign_in_with_email'.tr
              // "Sign In With Your Email And Password \n OR Continue With Social Media",
              ),
          const SizedBox(height: 30),
          CustomTextFormAuth(
            controller: controller.email,
            labelText: "email".tr,
            hintText: "enter_your_email".tr,
            icon: Icons.email_outlined,
          ),
          CustomTextFormAuth(
            controller: controller.password,
            labelText: "password".tr,
            hintText: "enter_your_password".tr,
            icon: Icons.lock_outlined,
          ),
          InkWell(
            onTap: () {
              controller.goToForgetPassword();
            },
            child: Text("forget_password".tr,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.titleSmall),
          ),
          const SizedBox(height: 15),
          CustomButtonAuth(
            text: "sign_in".tr,
            onPressed: () {},
          ),
          const SizedBox(height: 30),
          CustomTextSignUpOrSignIn(
            onTap: () {
              controller.goToSignUp();
            },
            textOne: "${'dont_have_an_account'.tr}   ",
            textTwo: 'sign_up'.tr,
          )
        ]),
      ),
    );
  }
}
