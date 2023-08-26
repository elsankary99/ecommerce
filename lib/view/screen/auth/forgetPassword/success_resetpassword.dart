import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
