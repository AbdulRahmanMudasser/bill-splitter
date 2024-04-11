import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';

import '../../../utils/styling/app_colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Get.height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 6.0.wp, vertical: 3.0.hp),
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: child,
    );
  }
}