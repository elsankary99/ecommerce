import 'package:ecommerce/core/constant/image_assets.dart';
import 'package:ecommerce/data/model/onboarding_model.dart';
import 'package:get/get_utils/get_utils.dart';

List<OnBoardingModel> onboardingList = [
  OnBoardingModel(
      title: "choose_product".tr,
      body: "we_have_hundred_product".tr,
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "easy_and_safe_payment".tr,
      body: "easy_checkout_safe_payment".tr,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "track_your_order".tr,
      body: "best_tracker_has_been_used".tr,
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(
      title: "fast_delivery".tr,
      body: "reliable_and_fast_delivery".tr,
      image: AppImageAsset.onBoardingImageFour),
];
