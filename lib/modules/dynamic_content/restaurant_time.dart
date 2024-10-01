import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/search_bar.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class RestaurantTimingView extends StatefulWidget {
  const RestaurantTimingView({super.key});

  @override
  State<RestaurantTimingView> createState() => _RestaurantTimingViewState();
}

class _RestaurantTimingViewState extends State<RestaurantTimingView> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    var mediawidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            // const SideMenuBar(),
            const SideDrawer(),
            Column(
              children: [
                AdminInfoTab(mediawidth: mediawidth),
                Container(
                  height: 0.9.sh,
                  //  width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurant Timing',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomSearchBar(),
                            // Padding(
                            //   padding: const EdgeInsets.only(right: 25.0),
                            //   child: Column(
                            //     children: [
                            //       Text(
                            //         'Booking',
                            //         style: TextStyle(
                            //           fontSize: 18,
                            //           fontWeight: FontWeight.w500,
                            //           color: Colors.grey.shade600,
                            //         ),
                            //       ),
                            //       const SizedBox(
                            //         height: 10,
                            //       ),
                            //       SlidingSwitch(
                            //         value: isSwitched,
                            //         width: 80,
                            //         onChanged: (cvalue) {},
                            //         height: 40,
                            //         animationDuration: const Duration(milliseconds: 400),
                            //         onTap: () {
                            //           setState(() {
                            //             isSwitched = !isSwitched;
                            //           });
                            //         },
                            //         onDoubleTap: () {},
                            //         onSwipe: () {},
                            //         // textOff: "OFF",
                            //         // textOn: "ON",
                            //         contentSize: 16,
                            //         colorOn: Colors.green,
                            //         colorOff: Colors.red,
                            //         background: isSwitched ? Colors.green : Colors.red,
                            //         buttonColor: const Color(0xfff7f5f7),
                            //         inactiveColor: Colors.white,
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Container(
                                //height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue.shade100,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      constraints: const BoxConstraints(minWidth: 130),
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
                                            'Day',
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
                                      width: 180,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            'Opening Time - Day',
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
                                      width: 180,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text(
                                          'Closing Time - Day',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade600,
                                          ),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            'Opening Time - Night',
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
                                      width: 180,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text(
                                          'Closing Time - Night',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade600,
                                          ),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      width: 130,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text(
                                          'Closed/Open',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade600,
                                          ),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        ),
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text(
                                          'Action',
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
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(minWidth: 130),
                                          child: Container(
                                            // width: 150,
                                            decoration: const BoxDecoration(
                                                // border: Border.all(width: 0.5, color: Colors.grey),
                                                ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text('Monday'),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 180,
                                          decoration: const BoxDecoration(
                                              // borderRadius: const BorderRadius.only(
                                              //   topRight: Radius.circular(10),
                                              // ),
                                              // border: Border.all(width: 0.5, color: Colors.grey),
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('10:30 AM'),
                                          ),
                                        ),
                                        Container(
                                          width: 180,
                                          decoration: const BoxDecoration(
                                              // border: Border.all(width: 0.5, color: Colors.grey),
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '2:30 PM',
                                              overflow: TextOverflow.clip,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 190,
                                          decoration: const BoxDecoration(
                                              // border: Border.all(width: 0.5, color: Colors.grey),
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '5:00 PM',
                                              style: TextStyle(color: Color.fromARGB(255, 82, 172, 109), fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 180,
                                          decoration: const BoxDecoration(
                                              // border: Border.all(width: 0.5, color: Colors.grey),
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '10:20 PM',
                                              overflow: TextOverflow.clip,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // constraints: const BoxConstraints(minWidth: 130),
                                          decoration: const BoxDecoration(
                                              // border: Border.all(width: 0.5, color: Colors.grey),
                                              ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SlidingSwitch(
                                              value: isSwitched,
                                              width: 60,
                                              onChanged: (cvalue) {},
                                              height: 30,
                                              animationDuration: const Duration(milliseconds: 400),
                                              onTap: () {
                                                setState(() {
                                                  isSwitched = !isSwitched;
                                                });
                                              },
                                              onDoubleTap: () {},
                                              onSwipe: () {},
                                              textOff: "",
                                              textOn: "",
                                              contentSize: 16,
                                              colorOn: Colors.green,
                                              colorOff: Colors.red,
                                              background: isSwitched ? Colors.green : Colors.red,
                                              buttonColor: const Color(0xfff7f5f7),
                                              inactiveColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 120,
                                          decoration: const BoxDecoration(
                                              // border: Border.all(width: 0.5, color: Colors.grey),
                                              ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                              onPressed: () {},
                                              child: const Center(child: Text('Edit')),
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
                ),
                // CopyrightTab(mediawidth: mediawidth)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
