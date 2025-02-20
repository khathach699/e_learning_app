import 'package:e_learning_app/common/widgets/app_bar.dart';
import 'package:e_learning_app/common/widgets/app_textfield.dart';
import 'package:e_learning_app/common/widgets/button_widgets.dart';
import 'package:e_learning_app/common/widgets/text_widget.dart';
import 'package:e_learning_app/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                // more login options
                Center(
                  child: text14Normal(
                    text: "Enter your details below & free sign up",
                  ),
                ),
                SizedBox(height: 50.h),
                // user name
                appTextField(
                  text: "User name",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your user name",
                ),
                SizedBox(height: 20.h),
                //email text box
                appTextField(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your email address",
                ),
                SizedBox(height: 20.h),
                //password text box
                appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  obscureText: true,
                ),
                SizedBox(height: 20.h),
                // confirm password
                appTextField(
                  text: "Confirm Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your Confirm Password",
                  obscureText: true,
                ),
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: text14Normal(
                    text:
                        "By creating an account you are agreeing with our terms and conditions ",
                  ),
                ),
                SizedBox(height: 100.h),
                // app register button
                Center(
                  child: appButton(
                    buttonName: "Register",
                    isLogin: true,
                    context: context,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
