import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class DynamicImagesView extends StatelessWidget {
  const DynamicImagesView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediawidth = MediaQuery.of(context).size.width;
    return
        // Scaffold(
        //   body: SingleChildScrollView(
        //     child: Row(
        //       children: [
        //         // const SideMenuBar(),
        //         const SideDrawer(),
        SingleChildScrollView(
      child: Column(
        children: [
          AdminInfoTab(mediawidth: mediawidth),
          Container(
              height: 0.8.sh,
              // width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
              decoration: const BoxDecoration(color: Colors.white),
              child: const Text('Dynamic Images')),
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
