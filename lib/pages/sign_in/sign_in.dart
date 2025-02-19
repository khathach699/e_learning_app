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
          appBar: buildAppbar(),
          backgroundColor: Colors.white,
          body: Column(
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
              appTextField(text: "Email", iconName: "assets/icons/user.png"),
              SizedBox(height: 20.h),
              //password text box
              appTextField(text: "Password", iconName: "assets/icons/lock.png"),
            ],
          ),
        ),
      ),
    );
  }
}
