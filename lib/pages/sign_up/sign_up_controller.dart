import 'package:e_learning_app/common/widgets/popup_messsages.dart';
import 'package:e_learning_app/pages/sign_up/notifier/register_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp(BuildContext context) {
    var state = ref.read(registerNotifierProvider);
    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (!state.userName.isEmpty && !state.email.isEmpty) {
      if (state.password.length >= 6) {
        if (state.password == state.rePassword) {
          // Xử lý đăng ký
        } else {
          toastInfo("Password and Re-Password must be the same");
        }
      } else {
        toastInfo("Password must be at least 6 characters");
      }
    } else {
      toastInfo("Please fill all fields");
    }
  }
}
