import 'package:ecommerce/core/localization/change_local.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("choose_lang".tr,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              CustomButtonLang(
                  onPressed: () {
                    controller.changeLang("ar");
                  },
                  title: 'arabic'.tr),
              const SizedBox(height: 20),
              CustomButtonLang(
                  onPressed: () {
                    controller.changeLang("en");
                  },
                  title: 'english'.tr),
            ],
          ),
        ),
      ),
    );
  }
}
