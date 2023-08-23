import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "arabic": "العربية",
          "english": "الانجليزية",
          "choose_lang": "اختر اللغة",
        },
        "en": {
          "arabic": "Arabic",
          "english": "English",
          "choose_lang": "Choose Language",
        },
      };
}
