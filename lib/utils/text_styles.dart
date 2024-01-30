import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/colors.dart';

abstract class AppTextStyle {
  static const biggest = TextStyle(
    color: AppColors.text_2,
    fontFamily: 'Roboto',
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );
  static const medium = TextStyle(
    color: AppColors.text_2,
    fontFamily: 'Roboto',
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const regular = TextStyle(
    color: AppColors.text_2,
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
