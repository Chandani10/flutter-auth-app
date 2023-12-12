import 'package:flutter/material.dart';
import 'package:flutter_auth_app/features/home/presentation/view/home_screen.dart';
import 'package:flutter_auth_app/features/user/presentation/controller/login_controller.dart';
import 'package:flutter_auth_app/utils/validator.dart';
import 'package:flutter_auth_app/widgets/custom_textStyle.dart';
import 'package:flutter_auth_app/widgets/text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<LoginController>(
        init: LoginController(),
      builder: (controller) {
        return GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(

            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.ph,
                    textWidget(title: 'Welcome!',
                      fontWeight: FontWeight.w700,
                      fontSize: 25.sp, ),
                    5.ph,
                    textWidget(title: 'Please Enter Your Details.',
                      fontSize: 18.sp, ),
                    _textView(title: 'Email'),
                    _emailTextFieldView(controller) ,
                    _textView(title: 'Password'),
                    _passwordTextFieldView(controller),
                    20.ph,
                    _saveButtonView(controller),

                ],).paddingOnly(top: 20.h,left: 20.h,right: 20.h,bottom: 20.h),
              ),
            ),
          ),
        );
      }
    );
  }

 Widget _textView({String title = ''}){
    return textWidget(title: title,).marginOnly(bottom: 10.h,top: 20.h);
  }

/*============================================password TextField View==================================*/
  Widget _passwordTextFieldView(LoginController controller){
    return  TextFormFieldWidget(
      hintText: 'Password',
      textInputAction: TextInputAction.done,
      maxLength: 50,
      validator: (String val) {
        return PasswordFormValidator.validate(val.trim());
      },
      controller: controller.passwordController,);
  }



  /*============================================email TextField View==================================*/
  Widget _emailTextFieldView(LoginController controller){
    return  TextFormFieldWidget(
      hintText: 'Email',
      validator: (String val) {
        return EmailFormValidator.validate(val);
      },
        keyboardType: TextInputType.emailAddress,
      controller: controller.emailController,);
  }


  /*===========================================save Button View==================================*/

  Widget _saveButtonView(LoginController controller){
    return  SizedBox(
      width: Get.width,
      height: 50.h,
      child: ElevatedButton(

        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            Get.snackbar(
              'Success',
              'Login Successfully',
              snackPosition: SnackPosition.BOTTOM,
              borderRadius: 10.r,
              colorText: Colors.white,
              margin: EdgeInsets.only(bottom: 20.h,left: 15.w,right: 15.w),
              backgroundColor: Colors.indigo.shade500,
              duration: const Duration(seconds: 5)

            );
            Get.offAll(()=> const HomeScreen());

          }
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
            backgroundColor: MaterialStateProperty.all(Colors.indigo),
           // padding: MaterialStateProperty.all( EdgeInsets.all(18.0.h)),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.sp,color: Colors.white,))),
        child:  const Text(
          "Submit",
        ),
      ),
    );
  }
}
