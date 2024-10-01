import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class DynamicSandFView extends StatefulWidget {
  const DynamicSandFView({super.key});

  @override
  State<DynamicSandFView> createState() => _DynamicSandFViewState();
}

final TextEditingController stripePublicKeyController = TextEditingController();
final TextEditingController stripeSecretKeyController = TextEditingController();
final TextEditingController squareAppIdController = TextEditingController();
final TextEditingController squareLocationIdController = TextEditingController();
final TextEditingController squareTokenController = TextEditingController();
final TextEditingController faxController = TextEditingController();
final TextEditingController voiceCallController = TextEditingController();
final TextEditingController voiceCall2Controller = TextEditingController();
final TextEditingController smsNumberController = TextEditingController();
final TextEditingController smsNumber2Controller = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController mobileController = TextEditingController();
final TextEditingController addressController = TextEditingController();

final List<String> itemlist = ['Stripe', 'Square', 'Pay at Restaurent'];
String? selectedPaymethod = 'Stripe';
final List<String> faxitem = ['Twillo', 'Telynx'];
String? selectedFaxCom = 'Twillo';

class _DynamicSandFViewState extends State<DynamicSandFView> {
  @override
  Widget build(BuildContext context) {
    var mediawidth = MediaQuery.of(context).size.width;
    return
        // Scaffold(
        //   body: Row(
        //     children: [
        //       // const SideMenuBar(),
        //       const SideDrawer(),
        SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AdminInfoTab(mediawidth: mediawidth),
          Container(
            height: 0.88.sh,
            //  width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Update Website Content',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Stripe Public Key',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 400,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: stripePublicKeyController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Stripe Public Key',
                                      hintStyle: const TextStyle(color: Colors.black26),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.indigo[400]!,
                                          width: 1.5,
                                        ),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Stripe Public Key Can't be Empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Stripe Secret Key',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 400,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: stripeSecretKeyController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Stripe Secret Key',
                                      hintStyle: const TextStyle(color: Colors.black26),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.indigo[400]!,
                                          width: 1.5,
                                        ),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Stripe Secret Key Can't be Empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Square App Id',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 300,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: squareAppIdController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Square App Id',
                                      hintStyle: const TextStyle(color: Colors.black26),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.indigo[400]!,
                                          width: 1.5,
                                        ),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Square App Id Can't be Empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Square Location Id',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 300,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: squareLocationIdController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Square Location Id',
                                      hintStyle: const TextStyle(color: Colors.black26),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.indigo[400]!,
                                          width: 1.5,
                                        ),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Square Location Id Can't be Empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Square Token',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 300,
                                  //height: 200,
                                  child: TextFormField(
                                    controller: squareTokenController,
                                    style: TextStyle(color: Colors.grey[700], overflow: TextOverflow.ellipsis),
                                    decoration: InputDecoration(
                                      hintText: 'Square Token',
                                      isDense: false,
                                      hintStyle: const TextStyle(color: Colors.black26),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.indigo[400]!,
                                          width: 1.5,
                                        ),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Square Token Can't be Empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Select Payment Gateway',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 300,
                                  height: 60,
                                  child: InputDecorator(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        borderRadius: BorderRadius.circular(12),
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        value: selectedPaymethod,
                                        items: itemlist
                                            .map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Text(item),
                                                ))
                                            .toList(),
                                        onChanged: (item) {
                                          setState(() {
                                            selectedPaymethod = item;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Select Twillo/Telynx',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 300,
                                  height: 60,
                                  child: InputDecorator(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        borderRadius: BorderRadius.circular(12),
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        value: selectedFaxCom,
                                        items: faxitem
                                            .map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Text(item),
                                                ))
                                            .toList(),
                                        onChanged: (item) {
                                          setState(() {
                                            selectedFaxCom = item;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Fax ( Fax Send On This Number )',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Fax',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Fax Can't be Empty";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Voice Call ( If You Have a New Order than Automatically Voice Call on this Number )',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Voice call',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Voice Call2 ( If You Have a New Order than Automatically Voice Call on this Number )',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Voice call2',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'SMS Number ( If You Have a New Order than Automatically Text Messagte On this Number )',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'SMS Number',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'SMS Number2 ( If You Have a New Order than Automatically Text Messagte On this Number )',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'SMS Number2',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Email Address',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Enter valid email',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Mobile Number',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Enter valid Ph. Number',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Address',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: faxController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Enter valid Address ',
                                  hintStyle: const TextStyle(color: Colors.black26),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.indigo[400]!,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Fax Can't be Empty";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press, you can access the entered values using the controllers
                          },
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //CopyrightTab(mediawidth: mediawidth)
        ],
      ),
    );
    //     ],
    //   ),
    // );
  }
}
