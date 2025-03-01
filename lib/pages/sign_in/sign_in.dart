import 'package:e_learning_app/common/widgets/app_bar.dart';
import 'package:e_learning_app/common/widgets/app_textfield.dart';
import 'package:e_learning_app/common/widgets/button_widgets.dart';
import 'package:e_learning_app/common/widgets/text_widget.dart';
import 'package:e_learning_app/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(title: "Sign In"),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //top login button
                thirdPartyLogin(),

                // more login options
                Center(
                  child: text14Normal(
                    text: "Or use your email account to login.",
                  ),
                ),
                SizedBox(height: 50.h),
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
                Container(
                  padding: EdgeInsets.only(left: 25.w),
                  child: textUnderLine(text: "Forgot password?"),
                ),
                SizedBox(height: 100.h),

                //app login button
                Center(child: appButton(buttonName: "Login")),

                SizedBox(height: 20.h),
                // app register button
                Center(
                  child: appButton(
                    buttonName: "Register",
                    isLogin: false,
                    context: context,
                    func: () => Navigator.pushNamed(context, "/register"),
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
