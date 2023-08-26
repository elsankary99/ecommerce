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
          "Sign Up",
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
            titleLarge: "Welcome Back",
            titleSmall:
                "Sign Up With Your Email And Password \n OR Continue With Social Media",
          ),
          const SizedBox(height: 30),
          CustomTextFormAuth(
            controller: controller.userName,
            labelText: "Username",
            hintText: "Enter Your Username",
            icon: Icons.person_3_outlined,
          ),
          CustomTextFormAuth(
            controller: controller.email,
            labelText: "Email",
            hintText: "Enter Your Email",
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
            labelText: "Password",
            hintText: "Enter Your Password",
            icon: Icons.lock_outlined,
          ),
          CustomButtonAuth(
            text: "Sign Up",
            onPressed: () {
              controller.signUp();
            },
          ),
          const SizedBox(height: 30),
          CustomTextSignUpOrSignIn(
            onTap: () {
              controller.goToSignIn();
            },
            textOne: "Already have an account ?   ",
            textTwo: 'Sign In',
          )
        ]),
      ),
    );
  }
}
