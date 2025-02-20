import 'package:e_learning_app/common/utils/app_styles.dart';
import 'package:e_learning_app/pages/sign_in/sign_in.dart';
import 'package:e_learning_app/pages/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Kích thước thiết kế
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Apptheme.appThemeData,
          routes: {"/register": (context) => const SignUP()},
          home: const SignIn(),
        );
      },
    );
  }
}
