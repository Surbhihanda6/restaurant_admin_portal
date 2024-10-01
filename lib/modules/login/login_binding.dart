import 'package:get/get.dart';
import 'package:taj_restaurant_admin/modules/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
