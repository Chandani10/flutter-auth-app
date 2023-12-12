import 'package:flutter/material.dart';
import 'package:flutter_auth_app/features/home/presentation/controller/home_controller.dart';
import 'package:flutter_auth_app/widgets/custom_textStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return
          Scaffold(
            appBar: AppBar(elevation: 0.0,
            title: textWidget(title: 'Home',textColor: Colors.white,fontSize: 22.sp),centerTitle: true,
            ),
            body: Center(child: textWidget(title: 'Home')),);
      }
    );
  }



}
