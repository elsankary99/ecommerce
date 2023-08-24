import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
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
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 15),
          const CustomTextBodyAuth(
            titleLarge: "Welcome Back",
            titleSmall:
                "Sign In With Your Email And Password \n OR Continue With Social Media",
          ),
          const SizedBox(height: 30),
          const CustomTextFormAuth(
            labelText: "Email",
            hintText: "Enter Your Email",
            icon: Icons.email_outlined,
          ),
          const CustomTextFormAuth(
            labelText: "Password",
            hintText: "Enter Your Password",
            icon: Icons.lock_outlined,
          ),
          Text("Forget Password ? ",
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 15),
          CustomButtonAuth(
            text: "Sign In",
            onPressed: () {},
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account ?   ",
                style: TextStyle(color: AppColor.grey, fontSize: 14),
              ),
              InkWell(
                  onTap: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
