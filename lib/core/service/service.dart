import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppService extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<AppService> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

instance() async {
  await Get.putAsync(() => AppService().init());
}
