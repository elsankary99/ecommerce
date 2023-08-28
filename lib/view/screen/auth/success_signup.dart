import 'package:ecommerce/controller/auth/success_signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backGroundColor,
        centerTitle: true,
        title: Text(
          "success".tr,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.sentiment_very_satisfied_rounded,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            const Text(''),
            const Text(''),
            const Spacer(),
            CustomButtonAuth(
              text: 'go_to_login'.tr,
              onPressed: () {
                controller.goToPageLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}
