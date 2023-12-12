
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_auth_app/features/user/presentation/view/login_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController  {

  @override
  void onReady() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    _navigateToNextScreen();
    super.onReady();
  }

 void _navigateToNextScreen() => Timer(const Duration(seconds: 3), () async {
   Get.offAll(()=> LoginScreen());
      });


}
