import 'package:ecommerce/core/constant/router.dart';
import 'package:ecommerce/view/screen/auth/forgetPassword/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/forgetPassword/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/forgetPassword/success_resetpassword.dart';
import 'package:ecommerce/view/screen/auth/success_signup.dart';
import 'package:ecommerce/view/screen/auth/forgetPassword/verifycode.dart';
import 'package:ecommerce/view/screen/auth/verifycode_signup.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //!onBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),

  //!Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUP(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
};
