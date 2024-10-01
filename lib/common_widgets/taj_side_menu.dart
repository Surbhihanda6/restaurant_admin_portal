import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taj_restaurant_admin/utils/app_pages.dart';

class SideMenuBar extends StatefulWidget {
  const SideMenuBar({super.key});

  @override
  State<SideMenuBar> createState() => _SideMenuBarState();
}

class _SideMenuBarState extends State<SideMenuBar> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  // @override
  // void initState() {
  //   sideMenu.addListener((index) {
  //     pageController.jumpToPage(index);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      collapseWidth: 800,
      controller: sideMenu,
      style: SideMenuStyle(
        // showTooltip: false,
        displayMode: SideMenuDisplayMode.auto,
        hoverColor: Colors.blue[100],
        selectedHoverColor: const Color.fromARGB(255, 89, 77, 90),
        //selectedColor: const Color(0xfff8acff),
        selectedTitleTextStyle: const TextStyle(color: Colors.white),
        selectedIconColor: Colors.white,
        openSideMenuWidth: 240,
        compactSideMenuWidth: 50,
        // decoration: const BoxDecoration(
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(10),
        //     bottomRight: Radius.circular(10),
        //   ),
        //   // gradient: LinearGradient(
        //   //   colors: [
        //   //     Color(0xff696eff),
        //   //     Color(0xfff8acff),
        //   //   ],
        //   // ),
        // ),
        backgroundColor: const Color(0xff696eff),
      ),
      title: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 150,
              maxWidth: 150,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/tajIndianResturant.png',
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 16, 47, 63),
            indent: 8.0,
            endIndent: 8.0,
          ),
        ],
      ),
      items: [
        SideMenuItem(
          title: 'Dashboard',
          onTap: (index, _) {
            sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.dashboard);
          },
          icon: const Icon(Icons.home),
        ),
        SideMenuItem(
          title: "Today's Order",
          onTap: (index, _) {
            sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.todaysOrder);
          },
          icon: const Icon(Icons.local_pizza),
        ),
        SideMenuItem(
          title: 'Customer Query',
          onTap: (index, _) {
            sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.customersQuery);
          },
          icon: const Icon(Icons.question_answer),
        ),
        SideMenuItem(
          title: 'Add Menu',
          onTap: (index, _) {
            sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.addMenu);
          },
          icon: const Icon(Icons.menu_book),
        ),
        SideMenuItem(
          title: 'Dynamic Stripe & FAX',
          onTap: (index, _) {
            sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.dynamicsandf);
          },
          icon: const Icon(Icons.print),
        ),
        SideMenuItem(
          title: 'Dynamic Content',
          onTap: (index, _) {
            //sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.dynamicContent);
          },
          icon: const Icon(Icons.edit_document),
        ),
        SideMenuItem(
          title: 'All Customer Orders',
          onTap: (index, _) {
            // sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.customersOrder);
          },
          icon: const Icon(Icons.supervisor_account),
        ),
        SideMenuItem(
          title: 'View Refund',
          onTap: (index, _) {
            // sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.refund);
          },
          icon: const Icon(Icons.money_sharp),
        ),
        SideMenuItem(
          title: 'View Reserve Table',
          onTap: (index, _) {
            //sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.reserveTable);
          },
          icon: const Icon(Icons.calendar_month),
        ),
        SideMenuItem(
          title: 'View Coupon Code',
          onTap: (index, _) {
            // sideMenu.changePage(index);
            Get.offAndToNamed(RouteName.coupon);
          },
          icon: const Icon(Icons.airplane_ticket_outlined),
        ),
      ],
    );
  }
}
