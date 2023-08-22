import 'package:ecommerce/core/constant/router.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouter.login: (context) => const Login()
};
