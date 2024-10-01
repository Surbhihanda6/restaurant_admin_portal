import 'package:get/get.dart';
import 'package:taj_restaurant_admin/modules/todays_offer/todays_order_controller.dart';

class TOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TOrderController());
  }
}
