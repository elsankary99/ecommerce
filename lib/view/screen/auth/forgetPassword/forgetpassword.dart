import 'package:ecommerce/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        centerTitle: true,
        title: Text(
          "Forget Password",
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
            titleLarge: "Check Email",
            titleSmall:
                "please Enter Your Email Address To \n Receive A verification code",
          ),
          const SizedBox(height: 30),
          CustomTextFormAuth(
            controller: controller.email,
            labelText: "Email",
            hintText: "Enter Your Email",
            icon: Icons.email_outlined,
          ),
          const SizedBox(height: 15),
          CustomButtonAuth(
            text: "Check",
            onPressed: () {
              controller.goToVerifyCode();
            },
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}
