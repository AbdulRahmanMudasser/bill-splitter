import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';

import '../../../utils/styling/app_colors.dart';
import '../../../utils/styling/app_text_styles.dart';

class TipCard extends StatelessWidget {
  const TipCard({
    super.key,
    required this.tip,
  });

  final String tip;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 41.0.wp,
      padding: EdgeInsets.symmetric(horizontal: 4.0.wp, vertical: 1.0.hp),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        "$tip%",
        style: AppTextStyles.lightLargeTextStyle,
      ),
    );
  }
}