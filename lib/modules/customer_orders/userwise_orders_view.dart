import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class UserwiseOrdersView extends StatefulWidget {
  const UserwiseOrdersView({super.key});

  @override
  State<UserwiseOrdersView> createState() => _UserwiseOrdersViewState();
}

class _UserwiseOrdersViewState extends State<UserwiseOrdersView> {
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
        Column(
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
                  'User-Wise Orders',
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
                                  'User Id',
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
                            width: 200,
                            decoration: const BoxDecoration(
                                // border: Border.all(width: 0.5, color: Colors.grey),
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'No. of Items Purchased',
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
                            width: 200,
                            decoration: const BoxDecoration(
                                // border: Border.all(width: 0.5, color: Colors.grey),
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                'View all Orders',
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
                            //crossAxisAlignment: CrossAxisAlignment.start,
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
                              Container(
                                width: 200,
                                decoration: const BoxDecoration(
                                    // borderRadius: const BorderRadius.only(
                                    //   topRight: Radius.circular(10),
                                    // ),
                                    // border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(child: Text('21')),
                                ),
                              ),
                              Container(
                                width: 200,
                                decoration: const BoxDecoration(
                                    // border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text('View Orders'),
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
    );
    //       ],
    //     ),
    //   ),
    // );
  }
}
