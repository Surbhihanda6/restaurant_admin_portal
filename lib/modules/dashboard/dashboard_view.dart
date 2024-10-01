import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/info_container.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';
import 'package:taj_restaurant_admin/modules/dashboard/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediawidth = MediaQuery.of(context).size.width;
    return
        // Scaffold(
        //   body: SingleChildScrollView(
        //     child: Row(
        //       children: [
        // const SideMenuBar(),
        // const SideDrawer(),
        //const SideNaviRail(),
        //CollapsibleSidebar(items: items, body: body),

        SingleChildScrollView(
      child: Column(
        children: [
          AdminInfoTab(mediawidth: mediawidth),
          Container(
            height: 0.8.sh,
            // width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
            decoration: const BoxDecoration(
                //scolor: Colors.white,
                ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Text(
                        'DashBoard',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    const Wrap(
                      children: [
                        InfoContainer(
                          ctitle: 'Total Customers',
                          cquantity: '67',
                          cIcons: Icons.person,
                          cColor: Color.fromARGB(255, 125, 105, 240),
                        ),
                        InfoContainer(
                          ctitle: 'Total Order Items',
                          cquantity: '159',
                          cIcons: Icons.food_bank,
                          cColor: Color.fromARGB(255, 238, 240, 105),
                        ),
                        InfoContainer(
                          ctitle: 'Total Confirmed Order',
                          cquantity: '3',
                          cIcons: Icons.person,
                          cColor: Colors.greenAccent,
                        ),
                        InfoContainer(
                          ctitle: 'Total Pending Order',
                          cquantity: '71',
                          cIcons: Icons.shopping_cart,
                          cColor: Color.fromARGB(255, 240, 105, 116),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          CopyrightTab(mediawidth: mediawidth)
        ],
      ),
    );
    //       ],
    //     ),
    //   ),
    // );
  }
}
