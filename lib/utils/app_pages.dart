import 'package:get/get.dart';
import 'package:taj_restaurant_admin/layout/layout_dart.dart';
import 'package:taj_restaurant_admin/modules/add_menu/category_view.dart';
import 'package:taj_restaurant_admin/modules/add_menu/menu_view.dart';
import 'package:taj_restaurant_admin/modules/coupon/coupon.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/customer_orders_view.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/recent_orders_view.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/user_list_view.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/userwise_orders_view.dart';
import 'package:taj_restaurant_admin/modules/customer_query/query_view.dart';
import 'package:taj_restaurant_admin/modules/dashboard/dashboard_binding.dart';
import 'package:taj_restaurant_admin/modules/dashboard/dashboard_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_SandF/dynamic_sandf_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/about_us_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/dynamic_content_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/dynamic_images_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/gallery_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/popup_flyers_view.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/restaurant_tax.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/restaurant_time.dart';
import 'package:taj_restaurant_admin/modules/dynamic_content/review_view.dart';
import 'package:taj_restaurant_admin/modules/login/login_binding.dart';
import 'package:taj_restaurant_admin/modules/login/login_view.dart';
import 'package:taj_restaurant_admin/modules/refund/refund_view.dart';
import 'package:taj_restaurant_admin/modules/reserveation/reservation_view.dart';
import 'package:taj_restaurant_admin/modules/splash/splash_binding.dart';
import 'package:taj_restaurant_admin/modules/splash/splash_view.dart';
import 'package:taj_restaurant_admin/modules/todays_offer/todays_order_binding.dart';
import 'package:taj_restaurant_admin/modules/todays_offer/todays_order_view.dart';

class AppPages {
  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: RouteName.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.dashboard,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: RouteName.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteName.todaysOrder,
      page: () => const TOrderView(),
      binding: TOrderBinding(),
    ),
    GetPage(
      name: RouteName.customersQuery,
      page: () => const QueryView(),
    ),
    GetPage(
      name: RouteName.addMenu,
      page: () => const MenuView(),
    ),
    GetPage(
      name: RouteName.category,
      page: () => const CategoryView(),
    ),
    GetPage(
      name: RouteName.dynamicsandf,
      page: () => const DynamicSandFView(),
    ),
    GetPage(
      name: RouteName.dynamicContent,
      page: () => const DynamicContentView(),
    ),
    GetPage(
      name: RouteName.popupFlyers,
      page: () => const PopupFlyersView(),
    ),
    GetPage(
      name: RouteName.restaurantTax,
      page: () => const RestaurantTaxView(),
    ),
    GetPage(
      name: RouteName.resturantTiming,
      page: () => const RestaurantTimingView(),
    ),
    GetPage(
      name: RouteName.dynamicImages,
      page: () => const DynamicImagesView(),
    ),
    GetPage(
      name: RouteName.gallery,
      page: () => const GalleryView(),
    ),
    GetPage(
      name: RouteName.aboutUs,
      page: () => const AboutUsView(),
    ),
    GetPage(
      name: RouteName.review,
      page: () => const ReviewView(),
    ),
    GetPage(
      name: RouteName.customersOrder,
      page: () => COrderView(),
    ),
    GetPage(
      name: RouteName.recentOrders,
      page: () => const RecentOrdersView(),
    ),
    GetPage(
      name: RouteName.userwiseOrders,
      page: () => const UserwiseOrdersView(),
    ),
    GetPage(
      name: RouteName.userList,
      page: () => const UserListView(),
    ),
    GetPage(
      name: RouteName.refund,
      page: () => const RefundView(),
    ),
    GetPage(
      name: RouteName.reserveTable,
      page: () => const ReservationView(),
    ),
    GetPage(
      name: RouteName.coupon,
      page: () => const CouponView(),
    ),
    GetPage(
      name: RouteName.layout,
      page: () => const LayoutScreen(),
    ),
  ];
}

class RouteName {
  static const String login = '/login';
  static const String splash = "/splash";
  static const String dashboard = "/dashboard";
  static const String todaysOrder = "/todaysOrder";
  static const String customersQuery = "/customersQuery";
  static const String addMenu = "/addMenu";
  static const String category = "/category";
  static const String dynamicsandf = "/dynamicsandf";
  static const String dynamicContent = "/dynamicContent";
  static const String popupFlyers = "/popupFlyers";
  static const String restaurantTax = "/restaurantTax";
  static const String resturantTiming = "/resturantTiming";
  static const String aboutUs = "/aboutUs";
  static const String gallery = "/gallery";
  static const String dynamicImages = "/dynamicImages";
  static const String review = "/review";
  static const String customersOrder = "/customersOrder";
  static const String recentOrders = "/recentOrders";
  static const String userwiseOrders = "/userwiseOrders";
  static const String userList = "/userList";
  static const String refund = "/refund";
  static const String reserveTable = "/reserveTable";
  static const String coupon = "/coupon";
  static const String layout = "/layout";
}
