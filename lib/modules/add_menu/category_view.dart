import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

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
            height: 0.9.sh,
            //  width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                // const Padding(
                //   padding: EdgeInsets.only(left: 25.0),
                //   child: CustomSearchBar(),
                // ),
                // const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 45),
                  child: Column(
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
                            Container(
                              width: 180,
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
                                    'Category Name',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade600,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 250,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Actions',
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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                Container(
                                  width: 180,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Shubham11@gmail.com')),
                                  ),
                                ),
                                // Container(
                                //   width: 200,
                                //   decoration: const BoxDecoration(
                                //       // borderRadius: const BorderRadius.only(
                                //       //   topRight: Radius.circular(10),
                                //       // ),
                                //       // border: Border.all(width: 0.5, color: Colors.grey),
                                //       ),
                                //   child: const Padding(
                                //     padding: EdgeInsets.all(8.0),
                                //     child: Center(child: Text('21')),
                                //   ),
                                // ),
                                Container(
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text('Edit'),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text('Delete'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
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
