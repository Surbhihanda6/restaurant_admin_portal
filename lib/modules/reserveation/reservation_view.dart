import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/search_bar.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';
import 'package:sliding_switch/sliding_switch.dart';

class ReservationView extends StatefulWidget {
  const ReservationView({super.key});

  @override
  State<ReservationView> createState() => _ReservationViewState();
}

class _ReservationViewState extends State<ReservationView> {
  final List<String> itemlist = ['Pending', 'Confirmed', 'On The Way', 'Cancelled'];

  String? selectedItem = 'Pending';
  bool isSwitched = false;

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
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Orders',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CustomSearchBar(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Column(
                          children: [
                            Text(
                              'Booking',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SlidingSwitch(
                              value: isSwitched,
                              width: 100,
                              onChanged: (cvalue) {},
                              height: 45,
                              animationDuration: const Duration(milliseconds: 400),
                              onTap: () {
                                setState(() {
                                  isSwitched = !isSwitched;
                                });
                              },
                              onDoubleTap: () {},
                              onSwipe: () {},
                              textOff: "OFF",
                              textOn: "ON",
                              contentSize: 16,
                              colorOn: Colors.green,
                              colorOff: Colors.red,
                              background: isSwitched ? Colors.green : Colors.red,
                              buttonColor: const Color(0xfff7f5f7),
                              inactiveColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade100,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                constraints: const BoxConstraints(minWidth: 150),
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
                                      'Name',
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
                                width: 130,
                                decoration: const BoxDecoration(
                                    // border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Phone',
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
                                width: 150,
                                decoration: const BoxDecoration(
                                    // border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    'Email',
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
                                    'Reserved Date',
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
                                decoration: const BoxDecoration(
                                    // border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    'Reserved Time',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade600,
                                    ),
                                  )),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // border: Border.all(width: 0.5, color: Colors.grey),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text(
                                      'Status',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade600,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 120),
                                child: Container(
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
                                      'No. of Guests',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade600,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
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
                                    constraints: const BoxConstraints(minWidth: 150),
                                    child: Container(
                                      // width: 150,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add_circle_outlined,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                            ),
                                            const Center(child: Text('Shubham')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 130,
                                    decoration: const BoxDecoration(
                                        // borderRadius: const BorderRadius.only(
                                        //   topRight: Radius.circular(10),
                                        // ),
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(child: Text('+919601482295')),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        'jk@fsdkl.com',
                                        overflow: TextOverflow.clip,
                                      )),
                                    ),
                                  ),
                                  Container(
                                    width: 130,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        '12/12/2008',
                                        style: TextStyle(color: Color.fromARGB(255, 82, 172, 109), fontWeight: FontWeight.w600),
                                      )),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          '10:10 PM',
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(minWidth: 150),
                                    child: Container(
                                      // width: 150,
                                      decoration: const BoxDecoration(
                                          // border: Border.all(width: 0.5, color: Colors.grey),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: DropdownButton(
                                            borderRadius: BorderRadius.circular(12),
                                            //decoration: const InputDecoration(enabledBorder: OutlineInputBorder()),
                                            value: selectedItem,
                                            items: itemlist
                                                .map((item) => DropdownMenuItem(
                                                      value: item,
                                                      child: Text(item),
                                                    ))
                                                .toList(),
                                            onChanged: (item) {
                                              setState(() {
                                                selectedItem = item;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          '20',
                                          overflow: TextOverflow.clip,
                                        ),
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
                                      child: Center(
                                          child: TextButton(
                                        onPressed: () {},
                                        child: const Text('Delete'),
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
