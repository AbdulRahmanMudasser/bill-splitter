import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tip_calculator/controllers/home_controller.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';

import '../../../utils/styling/app_colors.dart';
import '../../../utils/styling/app_text_styles.dart';

class CalculationRow extends StatelessWidget {
  const CalculationRow({
    super.key,
    required this.amount,
    required this.titleText,
  });

  final String amount;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleText,
              style: AppTextStyles.lightSmallTextStyle.copyWith(
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 0.5.hp,
            ),
            Text(
              "/  person",
              style: AppTextStyles.lightSmallTextStyle.copyWith(
                letterSpacing: 1.25,
                fontSize: 10.0.sp,
                color: AppColors.iconColor,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 1.0.wp,
        ),
        Obx(
          () => Container(
            alignment: Alignment.centerRight,
            width: 45.0.wp,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Text(
                "${Get.find<HomePageController>().whatIsTheCurrencySymbol} $amount",
                style: AppTextStyles.lightLargeTextStyle.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 18.0.sp,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
