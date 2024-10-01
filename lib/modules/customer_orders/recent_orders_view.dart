import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/search_bar.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class RecentOrdersView extends StatefulWidget {
  const RecentOrdersView({super.key});

  @override
  State<RecentOrdersView> createState() => _RecentOrdersViewState();
}

class _RecentOrdersViewState extends State<RecentOrdersView> {
  final List<String> itemlist = ['Pending', 'Confirmed', 'On The Way', 'Cancelled'];
  String? selectedItem = 'Pending';

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
                    'Recent Orders',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: CustomSearchBar(),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade100,
                          ),
                          child: Row(
                            children: [
                              ConstrainedBox(
                                constraints: const BoxConstraints(minWidth: 230),
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
                                        'Order ID',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey.shade600,
                                        ),
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Order Type',
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
                                    'Name',
                                    overflow: TextOverflow.clip,
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
                                    // border: Border.all(width: 0.5, color: Colors.grey),
                                    ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    'Total',
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
                                      'Date',
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
                                constraints: const BoxConstraints(minWidth: 150),
                                child: Container(
                                  width: 150,
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
                                      'Refund',
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
                                    constraints: const BoxConstraints(minWidth: 230),
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
                                            const Center(child: Text('#TAJIND16860750555662')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        // borderRadius: const BorderRadius.only(
                                        //   topRight: Radius.circular(10),
                                        // ),
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(child: Text('PICKUP')),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(child: Text('Victor')),
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
                                        '\$ 3.55',
                                        style: TextStyle(color: Color.fromARGB(255, 82, 172, 109), fontWeight: FontWeight.w600),
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
                                          DateTime.now().toString(),
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
                                ],
                              ),
                            ),
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
                                    constraints: const BoxConstraints(minWidth: 230),
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
                                            const Center(child: Text('#TAJIND16860750555662')),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        // borderRadius: const BorderRadius.only(
                                        //   topRight: Radius.circular(10),
                                        // ),
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(child: Text('PICKUP')),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        // border: Border.all(width: 0.5, color: Colors.grey),
                                        ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(child: Text('Victor')),
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
                                        '\$ 3.55',
                                        style: TextStyle(color: Color.fromARGB(255, 82, 172, 109), fontWeight: FontWeight.w600),
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
                                          DateTime.now().toString(),
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
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
