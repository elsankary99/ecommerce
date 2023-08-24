import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/change_local.dart';
import 'package:ecommerce/core/localization/translations.dart';
import 'package:ecommerce/core/service/services.dart';
import 'package:ecommerce/router.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            titleSmall:
                TextStyle(height: 2, fontSize: 16, color: AppColor.grey),
            titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: const Login(),
    );
  }
}
