import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:taj_restaurant_admin/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 200,
        width: 200,
        child: Lottie.asset(
          'assets/admin_splash_screen.json',
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
