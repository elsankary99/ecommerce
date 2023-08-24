import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
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
        child: ListView(children: const [
          SizedBox(height: 20),
          CustomTextBodyAuth(
            titleLarge: "Welcome Back",
            titleSmall:
                "Sign In With Your Email And Password \n OR Continue With Social Media",
          ),
          SizedBox(height: 50),
          CustomTextFormAuth(
            labelText: "Email",
            hintText: "Enter Your Email",
            icon: Icons.email_outlined,
          ),
          CustomTextFormAuth(
            labelText: "Password",
            hintText: "Enter Your Password",
            icon: Icons.lock_outlined,
          ),
        ]),
      ),
    );
  }
}
