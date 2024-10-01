import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taj_restaurant_admin/utils/app_pages.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({
    super.key,
  });

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    var tabWidth = MediaQuery.of(context).size.width;
    if (tabWidth < 800) {
      return Container(
        height: 1.sh,
        width: 50,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        color: const Color(0xff696eff),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                runSpacing: 8.h,
                // runAlignment: WrapAlignment.center,
                // alignment: WrapAlignment.center,
                // crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/tajIndianResturant.png',
                        ),
                        SizedBox(height: 4.h),
                        const Divider(
                          color: Color.fromARGB(205, 16, 47, 63),
                        ),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: 'Dasboard',
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.dashboard);
                      },
                      icon: const Icon(Icons.home, size: 20, color: Colors.white),
                    ),
                  ),
                  Tooltip(
                    message: "Today's Order",
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.todaysOrder);
                      },
                      icon: const Icon(Icons.local_pizza, size: 20, color: Colors.white),
                    ),
                  ),
                  Tooltip(
                    message: 'Customer Query',
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.customersQuery);
                      },
                      icon: const Icon(Icons.question_answer, size: 20, color: Colors.white),
                    ),
                  ),
                  PopupMenuButton(
                    tooltip: 'Show Menu',
                    icon: const Icon(Icons.menu_book, size: 20, color: Colors.white),
                    onSelected: (value) {
                      setState(() {
                        selectedItem = value.toString();
                      });
                      Get.offAndToNamed(value.toString());
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem(
                          value: '/addMenu',
                          child: Text('Menu'),
                        ),
                        const PopupMenuItem(
                          value: '/category',
                          child: Text('Category'),
                        ),
                      ];
                    },
                  ),
                  Tooltip(
                    message: 'Dynamic Stripe & FAX',
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.dynamicsandf);
                      },
                      icon: const Icon(Icons.print, size: 20, color: Colors.white),
                    ),
                  ),
                  PopupMenuButton(
                    tooltip: 'Dynamic Content',
                    icon: const Icon(Icons.edit_document, size: 20, color: Colors.white),
                    onSelected: (value) {
                      setState(() {
                        selectedItem = value.toString();
                      });
                      Get.offAndToNamed(value.toString());
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem(
                          value: '/popupFlyers',
                          child: Text('Popup Flayers'),
                        ),
                        const PopupMenuItem(
                          value: '/dynamicContent',
                          child: Text('Dynamic Content'),
                        ),
                        const PopupMenuItem(
                          value: '/resturantTiming',
                          child: Text('Update Restaurant Week Time'),
                        ),
                        const PopupMenuItem(
                          value: '/restaurantTax',
                          child: Text('Update Restaurant Tax'),
                        ),
                        const PopupMenuItem(
                          value: '/gallery',
                          child: Text('Gallery'),
                        ),
                        const PopupMenuItem(
                          value: '/dynamicImages',
                          child: Text('Dynamic Images'),
                        ),
                        const PopupMenuItem(
                          value: '/aboutUs',
                          child: Text('About Us'),
                        ),
                        const PopupMenuItem(
                          value: '/review',
                          child: Text('Review'),
                        ),
                      ];
                    },
                  ),
                  PopupMenuButton(
                    tooltip: 'Customer Orders',
                    icon: const Icon(Icons.supervisor_account, size: 20, color: Colors.white),
                    onSelected: (value) {
                      setState(() {
                        selectedItem = value.toString();
                      });
                      Get.offAndToNamed(value.toString());
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem(
                          value: '/recentOrders',
                          child: Text('Recent 5 days Order'),
                        ),
                        const PopupMenuItem(
                          value: '/customersOrder',
                          child: Text('All Customer Orders'),
                        ),
                        const PopupMenuItem(
                          value: '/userwiseOrders',
                          child: Text('User Wise Order'),
                        ),
                        const PopupMenuItem(
                          value: '/userList',
                          child: Text('User List'),
                        ),
                      ];
                    },
                  ),
                  Tooltip(
                    message: 'View Refund',
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.refund);
                      },
                      icon: const Icon(Icons.money, size: 20, color: Colors.white),
                    ),
                  ),
                  Tooltip(
                    message: 'View Reserve Table',
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.reserveTable);
                      },
                      icon: const Icon(Icons.calendar_month, size: 20, color: Colors.white),
                    ),
                  ),
                  Tooltip(
                    message: 'View Coupon Code',
                    child: IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RouteName.coupon);
                      },
                      icon: const Icon(Icons.airplane_ticket, size: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        height: 1.sh,
        width: 240,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        color: const Color(0xff696eff),
        child: SingleChildScrollView(
          child: Wrap(
            //runSpacing: 8.h,
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 100,
                    maxWidth: 100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/tajIndianResturant.png',
                    ),
                  ),
                ),
              ),
              const Divider(color: Color.fromARGB(205, 16, 47, 63), indent: 8.0, endIndent: 8.0),
              ListTile(
                leading: const Icon(Icons.home, size: 20, color: Colors.white),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.dashboard);
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_pizza, size: 20, color: Colors.white),
                title: const Text(
                  "Today's Order",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.todaysOrder);
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer, size: 20, color: Colors.white),
                title: const Text(
                  'Customer Query',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.customersQuery);
                },
              ),
              ExpansionTile(
                leading: const Icon(Icons.menu_book, size: 20, color: Colors.white),
                collapsedIconColor: Colors.white,
                iconColor: Colors.white,
                title: const Text(
                  'Add Menu',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                children: [
                  ListTile(
                    title: const Text(
                      "Menu",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.addMenu);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Category",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.category);
                    },
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.print, size: 20, color: Colors.white),
                title: const Text(
                  'Dynamic Stripe & FAX',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.dynamicsandf);
                },
              ),
              ExpansionTile(
                leading: const Icon(Icons.menu_book, size: 20, color: Colors.white),
                collapsedIconColor: Colors.white,
                iconColor: Colors.white,
                title: const Text(
                  'Dynamic Content',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                children: [
                  ListTile(
                    title: const Text(
                      'Popup Flayers',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.popupFlyers);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Dynamic Content',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.dynamicContent);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Update Restaurant Week Time',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.resturantTiming);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Update Restaurant Tax',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.restaurantTax);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Gallery',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.gallery);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Dynamic Images',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.dynamicImages);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'About Us',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.aboutUs);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Review',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.review);
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  'All Customer Orders',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                leading: const Icon(Icons.supervisor_account, size: 20, color: Colors.white),
                collapsedIconColor: Colors.white,
                iconColor: Colors.white,
                children: [
                  ListTile(
                    title: const Text(
                      'Recent 5 days Order',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.recentOrders);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'All Customer Orders',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.customersOrder);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'User Wise Order',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.userwiseOrders);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'User List',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    onTap: () {
                      Get.offAndToNamed(RouteName.userList);
                    },
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.money, size: 20, color: Colors.white),
                title: const Text(
                  'View Refund',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.refund);
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month, size: 20, color: Colors.white),
                title: const Text(
                  'View Reserve Table',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.reserveTable);
                },
              ),
              ListTile(
                leading: const Icon(Icons.airplane_ticket_outlined, size: 20, color: Colors.white),
                title: const Text(
                  'View Coupon Code',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                onTap: () {
                  Get.offAndToNamed(RouteName.coupon);
                },
              )
            ],
          ),
        ),
      );
    }
  }
}
