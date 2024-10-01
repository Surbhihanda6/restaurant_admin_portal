import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  final usernameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  var obscureText = true.obs;
}
