import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class COrderView extends StatefulWidget {
  const COrderView({super.key});

  @override
  State<COrderView> createState() => _COrderViewState();
}

class _COrderViewState extends State<COrderView> {
  final List<Map<String, dynamic>> _tableData = List.generate(
      50,
      (index) => {
            'orderId': index + 1,
            'orderType': 'Type',
            'name': 'Name',
            'total': Random().nextInt(100),
            'date': DateTime.now().day,
            'status': 'Done',
          });

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
            //  width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Customer Orders',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Order ID')),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Order Type')),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Name')),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Total')),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Date')),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                    ),
                                    border: Border.all(width: 0.5, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(child: Text('Status')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...List.generate(
                            _tableData.length,
                            (index) => Row(
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: index == _tableData.length
                                          ? const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                            )
                                          : null,
                                      border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(_tableData[index]['orderId'].toString()),
                                    ),
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(_tableData[index]['orderType']),
                                    ),
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(_tableData[index]['name']),
                                    ),
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(_tableData[index]['total'].toString()),
                                    ),
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(_tableData[index]['date'].toString()),
                                    ),
                                  ),
                                ),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(minWidth: 150),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(_tableData[index]['status']),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
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
