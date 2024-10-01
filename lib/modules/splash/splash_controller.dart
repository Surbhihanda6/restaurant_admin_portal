import 'package:get/get.dart';
import 'package:taj_restaurant_admin/utils/app_pages.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {
  // late AnimationController animationController;
  // @override
  // void onInit() {
  //   super.onInit();
  //   animationController = AnimationController(vsync: this);
  // }

  // @override
  // void onClose() {
  //   animationController.dispose();
  //   super.onClose();
  // }
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.offAndToNamed(RouteName.login),
    );
    super.onInit();
  }
}
