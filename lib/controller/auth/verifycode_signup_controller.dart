import 'package:ecommerce/core/constant/router.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUPController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUPControllerImp extends VerifyCodeSignUPController {
  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
}
