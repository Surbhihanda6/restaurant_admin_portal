import 'dart:math' as math show pi;
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taj_restaurant_admin/modules/add_menu/category_view.dart';
import 'package:taj_restaurant_admin/modules/add_menu/menu_view.dart';
import 'package:taj_restaurant_admin/modules/coupon/coupon.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/customer_orders_view.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/recent_orders_view.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/user_list_view.dart';
import 'package:taj_restaurant_admin/modules/customer_orders/userwise_orders_view.dart';
import 'package:taj_restaurant_admin/modules/customer_query/query_view.dart';
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
import 'package:taj_restaurant_admin/modules/refund/refund_view.dart';
import 'package:taj_restaurant_admin/modules/reserveation/reservation_view.dart';
import 'package:taj_restaurant_admin/modules/todays_offer/todays_order_view.dart';
import 'package:taj_restaurant_admin/utils/app_pages.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  late List<CollapsibleItem> _items;
  late String _headline;
  final AssetImage _avatarImg = const AssetImage('assets/man.png');
  late bool collapsible;

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.home,
        onPressed: () => setState(() => _headline = 'DashBoard'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Dashboard"))),
        isSelected: true,
      ),
      CollapsibleItem(
        text: "Today's Order",
        icon: Icons.local_pizza,
        onPressed: () => setState(() => _headline = "Today's Order"),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Search"))),
      ),
      CollapsibleItem(
        text: 'Customer Query',
        icon: Icons.question_answer,
        onPressed: () => setState(() => _headline = 'Customer Query'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Notifications"))),
      ),
      CollapsibleItem(
        text: 'Add Menu',
        icon: Icons.menu_book,
        onPressed: () => setState(() => _headline = 'Add Menu'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Settings"))),
        subItems: [
          CollapsibleItem(
            text: 'Menu',
            // icon: Icons.menu_book,
            onPressed: () => setState(() => _headline = 'Menu'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Menu"))),
            isSelected: true,
          ),
          CollapsibleItem(
            text: 'Category',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Category'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            isSelected: false,
          ),
        ],
      ),
      CollapsibleItem(
        text: 'Dynamic Stripe & FAX',
        icon: Icons.print,
        onPressed: () => setState(() => _headline = 'Dynamic Stripe & FAX'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Alarm"))),
      ),
      CollapsibleItem(
        text: 'Dynamic Content',
        icon: Icons.edit_document,
        onPressed: () => setState(() => _headline = 'Dynamic'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Eco"))),
        subItems: [
          CollapsibleItem(
            text: 'Dynamic Content',
            // icon: Icons.menu_book,
            onPressed: () => setState(() => _headline = 'Dynamic Content'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Menu"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'Popup Flayers',
            // icon: Icons.menu_book,
            onPressed: () => setState(() => _headline = 'Popup Flayers'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Menu"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'Update Restaurant Week Time',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Update Restaurant Week Time'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'Update Restaurant Tax',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Update Restaurant Tax'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'Gallery',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Gallery'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'Dynamic Images',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Dynamic Images'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'About Us',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'About Us'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            //isSelected: true,
          ),
          CollapsibleItem(
            text: 'Review',
            //iconImage: const AssetImage("assets/shop_icon.png"),
            //  icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Review'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
            //isSelected: true,
          ),
        ],
      ),
      CollapsibleItem(
          text: 'Customer Orders',
          icon: Icons.supervisor_account,
          onPressed: () => setState(() => _headline = 'Customer Orders'),
          onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Event"))),
          subItems: [
            CollapsibleItem(
              text: 'Recent 5 days Order',
              //iconImage: const AssetImage("assets/shop_icon.png"),
              //  icon: Icons.ac_unit,
              onPressed: () => setState(() => _headline = 'Recent 5 days Order'),
              onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
              //isSelected: true,
            ),
            CollapsibleItem(
              text: 'All Customer Orders',
              //iconImage: const AssetImage("assets/shop_icon.png"),
              //  icon: Icons.ac_unit,
              onPressed: () => setState(() => _headline = 'All Customer Orders'),
              onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
              //isSelected: true,
            ),
            CollapsibleItem(
              text: 'User Wise Order',
              //iconImage: const AssetImage("assets/shop_icon.png"),
              //  icon: Icons.ac_unit,
              onPressed: () => setState(() => _headline = 'User Wise Order'),
              onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
              //isSelected: true,
            ),
            CollapsibleItem(
              text: 'User List',
              //iconImage: const AssetImage("assets/shop_icon.png"),
              //  icon: Icons.ac_unit,
              onPressed: () => setState(() => _headline = 'User List'),
              onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Shop"))),
              //isSelected: true,
            ),
          ]),
      CollapsibleItem(
        text: 'View Refund',
        icon: Icons.money,
        onPressed: () => setState(() => _headline = 'View Refund'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("No Icon"))),
      ),
      CollapsibleItem(
        text: 'View Reserve Table',
        icon: Icons.calendar_month,
        onPressed: () => setState(() => _headline = 'View Reserve Table'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email"))),
      ),
      CollapsibleItem(
        text: 'View Coupon Code',
        icon: Icons.airplane_ticket,
        onPressed: () => setState(() => _headline = 'View Coupon Code'),
        onHold: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Face"))),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    MediaQuery.of(context).size.width <= 800 ? collapsible = true : collapsible = false;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: collapsible,
        items: _items,
        collapseOnBodyTap: true,
        avatarImg: _avatarImg,
        title: 'John Smith',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
        },
        screenPadding: 0,
        body: _body(size, context),
        backgroundColor: const Color(0xff696eff),
        selectedTextColor: Colors.limeAccent,
        unselectedTextColor: const Color.fromARGB(255, 47, 58, 119),
        unselectedIconColor: const Color.fromARGB(255, 47, 58, 119),
        textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
        titleStyle: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        toggleTitleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: const [
          BoxShadow(
            color: Colors.indigo,
            blurRadius: 5,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
          // BoxShadow(
          //   color: Colors.green,
          //   blurRadius: 50,
          //   spreadRadius: 0.01,
          //   offset: Offset(3, 3),
          // ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    if (_headline == 'DashBoard') {
      //Get.offAndToNamed(RouteName.dashboard);
      return const DashboardView();
    } else if (_headline == "Today's Order") {
      return const TOrderView();
    } else if (_headline == 'Customer Query') {
      return const QueryView();
    } else if (_headline == 'Menu') {
      return const MenuView();
    } else if (_headline == 'Category') {
      return const CategoryView();
    } else if (_headline == 'Dynamic Stripe & FAX') {
      return const DynamicSandFView();
    } else if (_headline == 'Dynamic Content') {
      return const DynamicContentView();
    } else if (_headline == 'Popup Flayers') {
      return const PopupFlyersView();
    } else if (_headline == 'Update Restaurant Week Time') {
      return const RestaurantTimingView();
    } else if (_headline == 'Update Restaurant Tax') {
      return const RestaurantTaxView();
    } else if (_headline == 'Gallery') {
      return const GalleryView();
    } else if (_headline == 'Dynamic Images') {
      return const DynamicImagesView();
    } else if (_headline == 'About Us') {
      return const AboutUsView();
    } else if (_headline == 'Review') {
      return const ReviewView();
    } else if (_headline == 'Recent 5 days Order') {
      return const RecentOrdersView();
    } else if (_headline == 'All Customer Orders') {
      return const COrderView();
    } else if (_headline == 'User Wise Order') {
      return const UserwiseOrdersView();
    } else if (_headline == 'User List') {
      return const UserListView();
    } else if (_headline == 'View Refund') {
      return const RefundView();
    } else if (_headline == 'View Reserve Table') {
      return const ReservationView();
    } else if (_headline == 'View Coupon Code') {
      return const CouponView();
    }
    return const DashboardView();
  }
}
