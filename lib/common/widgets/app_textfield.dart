import 'package:e_learning_app/common/widgets/app_shadow.dart';
import 'package:e_learning_app/common/widgets/image_widget.dart';
import 'package:e_learning_app/common/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appTextField({
  String text = "",
  String iconName = "",
  String hintText = "Type your in info",
  bool obscureText = false,
  void Function(String value)? func,
}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(height: 5.h),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxShadowTextField(),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImage(imagePath: iconName),
              ),
              SizedBox(
                width: 280.w,
                height: 50.h,
                child: TextField(
                  onChanged: (value) => func!(value),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),

                  maxLines: 1,
                  autocorrect: false, // fix misspelled
                  obscureText: obscureText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
