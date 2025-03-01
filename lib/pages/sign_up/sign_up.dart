import 'package:e_learning_app/common/widgets/app_bar.dart';
import 'package:e_learning_app/common/widgets/app_textfield.dart';
import 'package:e_learning_app/common/widgets/button_widgets.dart';
import 'package:e_learning_app/common/widgets/text_widget.dart';
import 'package:e_learning_app/pages/sign_up/notifier/register_notifier.dart';
import 'package:e_learning_app/pages/sign_up/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUP extends ConsumerWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regProvider = ref.watch(registerNotifierProvider);
    // regProvider.copyWith
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(title: "Sign Up"),
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
                  func:
                      (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserNameChanged(value),
                ),
                SizedBox(height: 20.h),
                //email text box
                appTextField(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your email address",
                  func: (value) {
                    ref
                        .read(registerNotifierProvider.notifier)
                        .onEmailChanged(value);
                  },
                ),
                SizedBox(height: 20.h),
                //password text box
                appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  obscureText: true,
                  func: (value) {
                    ref
                        .read(registerNotifierProvider.notifier)
                        .onPasswordChanged(value);
                  },
                ),
                SizedBox(height: 20.h),
                // confirm password
                appTextField(
                  text: "Confirm Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your Confirm Password",
                  obscureText: true,

                  func: (value) {
                    ref
                        .read(registerNotifierProvider.notifier)
                        .onRePasswordChanged(value);
                  },
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
                    func:
                        () => SignUpController(ref: ref).handleSignUp(context),
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
