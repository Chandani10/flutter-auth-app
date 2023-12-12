import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final int? maxLength;
  final bool readOnly;
  final String? counterText;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final  validator;
  final List<TextInputFormatter>? inputFormat;
  final Widget? suffixIcon;
  final Function? onTabFunction;

  const TextFormFieldWidget({Key? key,
    this.controller,
    this.hintText,
    this.maxLength = 50, this.readOnly = false, this.counterText = '', this.textInputAction = TextInputAction.next,
    this.validator, this.onTabFunction,  this.keyboardType, this.suffixIcon, this.inputFormat,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: maxLength,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,readOnly: readOnly,
        textInputAction: textInputAction,
        validator: (v)=> validator(v),
         inputFormatters: inputFormat ??  [
           FilteringTextInputFormatter(
               RegExp(
                   '(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])'),
               allow: false),
         ],
        onTap: onTabFunction== null ?(){}:(){
          onTabFunction!();
        },
        style:  TextStyle(
            fontFamily: 'Mulish-Regular', fontSize: 18.sp, color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          counterText: counterText,
            hintText: hintText,hintStyle:  TextStyle(fontFamily: 'Mulish-Medium',
            fontSize: 14.sp,
            color: Colors.grey),
             contentPadding: EdgeInsets.only(bottom: 2.h,top: 2.h,left: 10.h),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: Colors.red)),
            errorBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: const BorderSide(color: Colors.red)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color: Colors.indigo)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(color:  Colors.indigo)))
        );
  }
}
