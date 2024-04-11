import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';
import 'package:tip_calculator/utils/styling/app_text_styles.dart';

import '../styling/app_colors.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    super.key,
    required this.icon,
    this.verticalPadding = 1.25,
    required this.hintText,
    this.textAlign = TextAlign.right,
    this.horizontalPadding = 5,
    this.hintFontSize = 14,
    required this.onChanged,
    required this.controller
  });

  final IconData? icon;
  final double verticalPadding;
  final String? hintText;
  final TextAlign textAlign;
  final double horizontalPadding;
  final double hintFontSize;
  final void Function(String)? onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      controller: controller,
      onChanged: onChanged,
      textAlign: textAlign,
      keyboardType: TextInputType.number,
      // textDirection: TextDirection.rtl,
      style: AppTextStyles.darkLargeTextStyle,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        prefixIcon: icon != null
            ? Icon(
                icon,
                color: AppColors.iconColor,
              )
            : null,
        contentPadding: EdgeInsets.symmetric(
          vertical: double.parse("$verticalPadding").hp,
          horizontal: double.parse("$horizontalPadding").wp,
        ),
        fillColor: AppColors.secondaryBackgroundColor,
        hintText: hintText,
        hintStyle: AppTextStyles.darkLargeTextStyle.copyWith(
          fontSize: double.parse("$hintFontSize").sp,
        ),
        // hintTextDirection: TextDirection.rtl,
      ),
    );
  }
}
