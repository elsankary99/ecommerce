import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButtonAuth({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
