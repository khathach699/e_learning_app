import 'package:e_learning_app/common/utils/app_colors.dart';
import 'package:e_learning_app/common/widgets/image_widget.dart';
import 'package:e_learning_app/common/widgets/text_widget.dart';
import 'package:e_learning_app/common/widgets/app_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Container(color: Colors.red, height: 1),
    ),
    title: text16Normal(text: "Login", color: AppColors.primaryText),
    centerTitle: true,
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(width: 40.w, height: 40.w, child: Image.asset(imagePath)),
  );
}

Widget appTextField({
  String text = "",
  String iconName = "",
  String hintText = "",
}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxShadowTextField(),
          child: Row(
            children: [Container(child: appImage(imagePath: iconName))],
          ),
        ),
      ],
    ),
  );
}
