import 'package:ecommerce/core/constant/color.dart';
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
        child: Column(children: [
          const SizedBox(height: 20),
          Text(
            "Welcome Back",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Sign In With Your Email And Password \n OR Continue With Social Media",
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.titleSmall!.copyWith(height: 1.5),
            ),
          ),
          const SizedBox(height: 25),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.email_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("Email")),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "Enter Your Email",
                hintStyle: const TextStyle(fontSize: 14)),
          )
        ]),
      ),
    );
  }
}
