import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/search_bar.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class PopupFlyersView extends StatelessWidget {
  const PopupFlyersView({super.key});

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
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AdminInfoTab(mediawidth: mediawidth),
          Container(
            height: 0.9.sh,
            //width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popup Flyers',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const CustomSearchBar(),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xff696eff),
                                Color(0xfff8acff),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1, 2),
                              )
                            ]),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add Flyers',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue.shade100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(minWidth: 150),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                  ),
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Title',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade600,
                                      ),
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Image',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              constraints: const BoxConstraints(minWidth: 150),
                              width: 150,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Start Date & Time',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                )),
                              ),
                            ),
                            Container(
                              constraints: const BoxConstraints(minWidth: 150),
                              width: 150,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'End Date & Time',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                )),
                              ),
                            ),
                            Container(
                              constraints: const BoxConstraints(minWidth: 150),
                              width: 150,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Added Date',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                )),
                              ),
                            ),
                            Container(
                              width: 150,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Action',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            constraints: const BoxConstraints(minHeight: 80),
                            decoration: BoxDecoration(
                              // color: Colors.grey[200],
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200, width: 3),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    // width: 150,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(child: Text('Wlcome t0 cha cha cha')),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // borderRadius: const BorderRadius.only(
                                      //   topRight: Radius.circular(10),
                                      // ),
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                          'hkjfdhj',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        DateTime.now().toString(),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        DateTime.now().toString(),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        DateTime.now().toString(),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Row(
                                      children: [
                                        TextButton(onPressed: () {}, child: const Text('Edit')),
                                        TextButton(onPressed: () {}, child: const Text('Delete')),
                                      ],
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // CopyrightTab(mediawidth: mediawidth)
        ],
      ),
    );
    //       ],
    //     ),
    //   ),
    // );
  }
}
