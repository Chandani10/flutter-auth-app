import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


/*============================================Text widget======================================*/

Widget textWidget({
  String? title,
  Color? textColor,
  double? fontSize,
  int? maxLines,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextOverflow? textOverflow = TextOverflow.ellipsis,
  TextDecoration? decoration
}) =>
    Text(
      title!,
      maxLines: maxLines ?? 1,
      textAlign: textAlign,
      style: TextStyle(
        decoration: decoration,
        fontFamily: 'Mulish',
        height: 1.2.h,
        overflow: textOverflow,
        fontWeight: fontWeight,
        color: textColor ?? Colors.black,
        fontSize: fontSize ?? 18.sp,
      ),
    );

/*===========================================Size box widget=====================================*/
extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
    height: toDouble(),
  );

  SizedBox get pw => SizedBox(
    width: toDouble(),
  );
}

