import 'package:e_learning_app/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget text24Normal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 24.sp,
      color: color,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16Normal({
  String text = "",
  Color color = AppColors.primarySecondaryElementText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16.sp,
      color: color,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14Normal({
  String text = "",
  Color color = AppColors.primaryThreeElementText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 14.sp,
      color: color,
      fontWeight: FontWeight.normal,
    ),
  );
}
