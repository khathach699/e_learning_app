import 'package:e_learning_app/common/utils/app_colors.dart';
import 'package:e_learning_app/common/widgets/text_widget.dart';
import 'package:flutter/material.dart';

AppBar buildAppbar({String title = ""}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Container(color: Colors.grey.withOpacity(0.3), height: 1),
    ),
    title: text16Normal(text: title, color: AppColors.primaryText),
  );
}
