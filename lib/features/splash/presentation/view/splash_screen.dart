import 'package:flutter/material.dart';
import 'package:flutter_auth_app/features/splash/presentation/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put<SplashController>(SplashController());

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(backgroundColor: Colors.indigo,);
  }
}
