import 'package:flutter/material.dart';

import 'package:tip_calculator/utils/extensions/responsive_extension.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle darkSmallTextStyle = TextStyle(
    fontFamily: 'TypeWriter',
    fontSize: 11.0.sp,
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );

  static TextStyle darkMediumTextStyle = TextStyle(
    fontFamily: 'TypeWriter',
    fontSize: 13.0.sp,
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );

  static TextStyle darkLargeTextStyle = TextStyle(
    fontFamily: 'TypeWriter',
    fontSize: 17.0.sp,
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );

  static TextStyle lightSmallTextStyle = TextStyle(
    fontFamily: 'TypeWriter',
    fontSize: 11.0.sp,
    color: AppColors.lightTextColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );

  static TextStyle lightLargeTextStyle = TextStyle(
    fontFamily: 'TypeWriter',
    fontSize: 17.0.sp,
    color: AppColors.lightTextColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );
}
