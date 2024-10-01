import 'package:get/get.dart';
import 'package:taj_restaurant_admin/modules/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
