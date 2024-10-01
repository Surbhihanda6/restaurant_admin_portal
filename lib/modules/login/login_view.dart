import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
//import 'package:http/http.dart';
import 'package:taj_restaurant_admin/models/login_response_model.dart';
import 'package:taj_restaurant_admin/modules/login/login_controller.dart';
import 'package:taj_restaurant_admin/network%20layer/network_layer.dart';
import 'package:taj_restaurant_admin/utils/app_pages.dart';
import 'package:taj_restaurant_admin/utils/base_urls.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value
          ? const SizedBox()
          : Scaffold(
              body: SizedBox(
                height: Get.height,
                child: Stack(
                  children: [
                    Center(
                      child: SingleChildScrollView(
                        child: Form(
                          key: formKey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //height: 550,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff696eff),
                                          Color(0xfff8acff),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Admin Login',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 75),
                                    child: Text(
                                      'Enter your email Id and password to access admin panel.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Email address',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      controller: controller.usernameController.value,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter your Usename";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            controller.obscureText.value = !controller.obscureText.value;
                                          },
                                          child: Icon(
                                            controller.obscureText.value ? Icons.visibility_off : Icons.visibility,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      obscureText: controller.obscureText.value,
                                      controller: controller.passwordController.value,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Password";
                                        } else if (value.length < 8) {
                                          return 'Password length cannot be less than 8';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff696eff),
                                          Color(0xfff8acff),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        await _loginCall(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.h)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0.45.sw,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '2018-2024 © MRD',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  void validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      //print('Form is valid');
    } else {
      // print('form is invalid');
    }
  }

  Future<void> _loginCall(BuildContext context) async {
    if (controller.usernameController.value.text.isEmpty || controller.passwordController.value.text.isEmpty) {
      formKey.currentState?.validate();
      return;
    }
    controller.isLoading(true);
    try {
      dynamic res = await NetworkLayer.post(Base.login, {
        //'username': emailController.text,
        'email': controller.usernameController.value.text,

        'password': controller.passwordController.value.text,
      });

      BaseResponse response = await post(Uri.parse(Base.login), body: {
        'email': controller.usernameController.value.text,
        'password': controller.passwordController.value.text,
      });
      //await Get.offAndToNamed(RouteName.dashboard);
      print(response.statusCode);
      // LoginResponseModel response = LoginResponseModel.fromJson(res);
      if (response.statusCode == 201) {
        // 'https://aaokhaoca.com/api/login' 'https://dummyjson.com/auth/login'
        // controller.usernameController.value.clear();
        // controller.passwordController.value.clear();

        await Get.offAndToNamed(RouteName.dashboard);
      } else {
        controller.isLoading.value = false;
        //SnackBar(content: content_snackbar(response.message!)
        EasyLoading.showError('Failed');
      }
    } on Exception catch (e) {
      controller.isLoading.value = false;

      await EasyLoading.showError(e.toString());
    } finally {
      controller.isLoading.value = false;
    }
  }
}
