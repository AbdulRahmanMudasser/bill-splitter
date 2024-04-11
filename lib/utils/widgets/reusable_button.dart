import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';

import '../styling/app_colors.dart';
import '../styling/app_text_styles.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = AppColors.darkTextColor,
  });

  final String text;
  final GestureTapCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 4.0.wp, vertical: 1.0.hp),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: AppTextStyles.darkMediumTextStyle.copyWith(
            color: color,
            letterSpacing: 1.25,
            fontFamily: '',
          ),
        ),
      ),
    );
  }
}
