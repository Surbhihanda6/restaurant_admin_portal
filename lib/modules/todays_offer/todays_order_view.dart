import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/info_container.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';
import 'package:taj_restaurant_admin/modules/todays_offer/todays_order_controller.dart';

class TOrderView extends GetView<TOrderController> {
  const TOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediawidth = MediaQuery.of(context).size.width;

    return
        // Scaffold(
        //   body: SingleChildScrollView(
        //     child: Row(
        //       children: [
        //         //const SideMenuBar(),
        //         const SideDrawer(),
        SingleChildScrollView(
      child: Column(
        children: [
          AdminInfoTab(mediawidth: mediawidth),
          Container(
            height: 0.8.sh,
            //  width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
            decoration: const BoxDecoration(color: Colors.white),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoContainer(
                  ctitle: "Today's Orders",
                  cquantity: '0 Orders',
                  cIcons: Icons.food_bank,
                  cColor: Color.fromARGB(255, 236, 112, 195),
                )
              ],
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
