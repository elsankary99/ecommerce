import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final void Function() onTap;
  final String textOne;
  final String textTwo;
  const CustomTextSignUpOrSignIn(
      {super.key,
      required this.onTap,
      required this.textOne,
      required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: const TextStyle(color: AppColor.grey, fontSize: 14),
        ),
        InkWell(
            onTap: onTap,
            child: Text(
              textTwo,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColor.primaryColor),
            ))
      ],
    );
  }
}
