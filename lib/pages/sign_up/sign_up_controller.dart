import 'package:e_learning_app/common/global_loader/global_loader.dart';
import 'package:e_learning_app/common/widgets/popup_messsages.dart';
import 'package:e_learning_app/pages/sign_up/notifier/register_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  Future<void> handleSignUp(BuildContext context) async {
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

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    Future.delayed(Duration(seconds: 3), () async {
      var context = Navigator.of(ref.context);
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if (kDebugMode) {
          print(credential);
        }
        if (credential.user != null) {
          await credential.user!.sendEmailVerification();
          await credential.user!.updateDisplayName(userName);
          toastInfo("Please check your email to verify your account");
          context.pop();
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak-password") {
          toastInfo("The password provided is too weak.");
        } else if (e.code == "email-already-in-use") {
          toastInfo("The account already exists for that email.");
        } else if (e.code == "user-not-found") {
          toastInfo("No user found for that email.");
        } else {
          toastInfo(e.message ?? "An error occurred");
        }
      } catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
      }

      ref.read(appLoaderProvider.notifier).setLoaderValue(false);
    });
  }
}
