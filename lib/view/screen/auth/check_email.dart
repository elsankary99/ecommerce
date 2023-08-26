import 'package:ecommerce/controller/auth/checkemail_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        centerTitle: true,
        title: Text(
          "Check Email",
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
            titleLarge: "Success SignUp",
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
              controller.goToSuccessSignUp();
            },
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}
