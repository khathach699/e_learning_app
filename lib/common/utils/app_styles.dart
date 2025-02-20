import 'package:e_learning_app/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Apptheme {
  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: AppColors.primaryText),
    ),
  );
}
