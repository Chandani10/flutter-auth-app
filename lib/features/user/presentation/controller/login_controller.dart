import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

// The late keyword is used to indicate that the variable will be initialized later
 late TextEditingController passwordController ;
 late TextEditingController emailController ;



 @override
  void onInit() {
    passwordController = TextEditingController();
     emailController = TextEditingController();
    super.onInit();
  }



}