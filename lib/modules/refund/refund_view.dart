import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class RefundView extends StatefulWidget {
  const RefundView({super.key});

  @override
  State<RefundView> createState() => _RefundViewState();
}

class _RefundViewState extends State<RefundView> {
  final DataTableSource _tableData = MyData();

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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Refund',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 2,
                                color: Colors.grey,
                              ),
                            ),
                            child: PaginatedDataTable(
                              source: _tableData,
                              rowsPerPage: 6,
                              //columnSpacing: 50,
                              columns: const [
                                DataColumn(label: Text('Order Id')),
                                DataColumn(label: Text('Refund Amount')),
                                DataColumn(label: Text('Created Date')),
                                DataColumn(label: Text('Status')),
                              ],
                            ),
                          )
                        ],
                      ),
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

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _tableData = List.generate(
    40,
    (index) => {
      'orderId': index + 1,
      'refundAmount': Random().nextInt(100),
      'createDate': DateTime.now().day,
      'status': 'Done',
    },
  );

  @override
  DataRow? getRow(int index) {
    return DataRow(
      cells: [
        DataCell(Text(_tableData[index]['orderId'].toString())),
        DataCell(Text(_tableData[index]['refundAmount'].toString())),
        DataCell(Text(_tableData[index]['createDate'].toString())),
        DataCell(Text(_tableData[index]['status'])),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _tableData.length;

  @override
  int get selectedRowCount => 0;
}
