import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taj_restaurant_admin/common_widgets/admin_info_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/copyright_tab.dart';
import 'package:taj_restaurant_admin/common_widgets/side_drawer.dart';

class DynamicContentView extends StatefulWidget {
  const DynamicContentView({super.key});

  @override
  State<DynamicContentView> createState() => _DynamicContentViewState();
}

class _DynamicContentViewState extends State<DynamicContentView> {
  final TextEditingController siteNameController = TextEditingController();
  final TextEditingController invoicePrefixController = TextEditingController();

  // final TextEditingController tableBookingOnOffController = TextEditingController();
  // final TextEditingController deliveryOnOffController = TextEditingController();

  final TextEditingController deliveryChargeController = TextEditingController();
  final TextEditingController paymentFromCustomerController = TextEditingController();

  //final TextEditingController restaurantOnOffController = TextEditingController();

  final TextEditingController metaTitleController = TextEditingController();
  final TextEditingController metaDescriptionController = TextEditingController();
  final TextEditingController metaKeywordsController = TextEditingController();
  final TextEditingController canonicalTagController = TextEditingController();

  final TextEditingController bannerH1TagController = TextEditingController();
  final TextEditingController bannerPTagController = TextEditingController();
  final TextEditingController discoverH1TagController = TextEditingController();
  final TextEditingController discoverPTagController = TextEditingController();
  final TextEditingController footerTextController = TextEditingController();
  final TextEditingController restaurantTimeZoneController = TextEditingController();
  final TextEditingController faviconController = TextEditingController();
  final TextEditingController headerLogoController = TextEditingController();
  final TextEditingController footerLogoController = TextEditingController();
  final TextEditingController facebookController = TextEditingController();
  final TextEditingController instagramController = TextEditingController();
  final TextEditingController twitterController = TextEditingController();
  final TextEditingController yelpController = TextEditingController();
  final TextEditingController googleVerificationLinkController = TextEditingController();
  final TextEditingController googleAnalyticController = TextEditingController();
  final TextEditingController googleMapPathController = TextEditingController();

  final List<String> itemlist = ['On', 'Off'];
  String? selectedPaymethod = 'On';
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
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Update Dynamic Website Content',
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
                                  'Web Site Name',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 400,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: siteNameController,
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
                                        return "Site Name Can't be Empty";
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
                                  'Invoice Prefix',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 400,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: invoicePrefixController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Invoice Prefix',
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
                                        return "Invoice Prefix Can't be Empty";
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Delivery On/Off',
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
                              'Table Booking On/Off',
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
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Delivery Charge',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 300,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: deliveryChargeController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Delivery Charge',
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
                                        return "Delivery Charge Can't be Empty";
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
                                  'Payment From Customer[Fix Pay \$]',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  // constraints: const BoxConstraints(maxWidth: 200),
                                  width: 300,
                                  // height: 200,
                                  child: TextFormField(
                                    controller: paymentFromCustomerController,
                                    style: TextStyle(color: Colors.grey[700]),
                                    decoration: InputDecoration(
                                      hintText: 'Fix Pay',
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
                                        return "SFix Pay Can't be Empty";
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
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Restaurent On/Off',
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
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Meta Title',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              //height: 200,
                              child: TextFormField(
                                controller: metaTitleController,
                                style: TextStyle(color: Colors.grey[700], overflow: TextOverflow.ellipsis),
                                decoration: InputDecoration(
                                  hintText: 'Meta Title',
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
                                    return "Meta Title Can't be Empty";
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
                              'Meta Description',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              //height: 200,
                              child: TextFormField(
                                controller: metaDescriptionController,
                                style: TextStyle(color: Colors.grey[700], overflow: TextOverflow.ellipsis),
                                decoration: InputDecoration(
                                  hintText: 'Meta Description',
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
                                    return "Meta Description Can't be Empty";
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
                              'Meta Keywords',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              //height: 200,
                              child: TextFormField(
                                controller: metaKeywordsController,
                                style: TextStyle(color: Colors.grey[700], overflow: TextOverflow.ellipsis),
                                decoration: InputDecoration(
                                  hintText: 'Meta Keywords',
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
                                    return "Meta Keywords Can't be Empty";
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
                              'Canonical Tag',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: canonicalTagController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Canonical Tag',
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
                                    return "Canonical Tag Can't be Empty";
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
                              'Banner H1 Tag',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: bannerH1TagController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Banner H1 Tag',
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
                              'Banner P Tag',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: bannerPTagController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Banner P Tag',
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
                              'Discover H1 Tag',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: discoverH1TagController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Discover H1 Tag',
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
                              'Discover P Tag',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: discoverPTagController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Discover P Tag',
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
                              'Footer Text',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: footerTextController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Footer Text',
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
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Restaurent TimeZone',
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'FaceBook',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: facebookController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Facebook',
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
                              'Instagram',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: instagramController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Instagram',
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
                              'Twitter',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: twitterController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Twitter',
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
                              'Yelp',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: yelpController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Yelp',
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
                              'Google Verification Link',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: googleVerificationLinkController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Google Verification Link',
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
                              'Google Analytic',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: googleAnalyticController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Google Analytic',
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
                              'Google Map Path',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              // constraints: const BoxConstraints(maxWidth: 200),
                              width: 300,
                              // height: 200,
                              child: TextFormField(
                                controller: googleMapPathController,
                                style: TextStyle(color: Colors.grey[700]),
                                decoration: InputDecoration(
                                  hintText: 'Google Map Path',
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
                          child: const Text('Update Content'),
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
    //       ],
    //     ),
    //   ),
    // );
  }
}
