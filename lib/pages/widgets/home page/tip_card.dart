import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:tip_calculator/controllers/home_controller.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';

import '../../../utils/styling/app_colors.dart';
import '../../../utils/styling/app_text_styles.dart';

class TipCard extends StatelessWidget {
  TipCard({
    super.key,
    required this.tip,
  });

  final String tip;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.find<HomePageController>().tipPercentage.value = double.parse(tip);
      },
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          width: 27.0.wp,
          padding: EdgeInsets.symmetric(horizontal: 4.0.wp, vertical: 0.75.hp),
          decoration: BoxDecoration(
            color: Get.find<HomePageController>().tipPercentage.value == double.parse(tip)
                ? AppColors.secondaryColor
                : AppColors.primaryColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tip,
                style: AppTextStyles.lightLargeTextStyle,
              ),
              Text(
                "%",
                style: AppTextStyles.lightLargeTextStyle.copyWith(fontFamily: ''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
