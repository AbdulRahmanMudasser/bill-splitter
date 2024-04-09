import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:tip_calculator/controllers/home_controller.dart';
import 'package:tip_calculator/pages/widgets/home%20page/calculate_row.dart';
import 'package:tip_calculator/pages/widgets/home%20page/main_container.dart';
import 'package:tip_calculator/pages/widgets/home%20page/tip_card.dart';
import 'package:tip_calculator/utils/extensions/responsive_extension.dart';
import 'package:tip_calculator/utils/styling/app_text_styles.dart';

import '../utils/styling/app_colors.dart';
import '../utils/widgets/reusable_button.dart';
import '../utils/widgets/reusable_text_field.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.logoBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 6.0.hp,
            ),

            // logo
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/images/logo.svg",
              ),
            ),

            SizedBox(
              height: 3.0.hp,
            ),

            MainContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // bill text
                  Text(
                    "Bill",
                    style: AppTextStyles.darkMediumTextStyle.copyWith(fontSize: 12.0.sp),
                  ),

                  SizedBox(
                    height: 1.25.hp,
                  ),

                  // enter total bill text field
                  const ReusableTextField(
                    icon: Icons.attach_money,
                    hintText: '',
                  ),

                  SizedBox(
                    height: 2.0.hp,
                  ),

                  // select tip text
                  Text(
                    "Select Tip %",
                    style: AppTextStyles.darkMediumTextStyle.copyWith(fontSize: 12.0.sp),
                  ),

                  SizedBox(
                    height: 1.75.hp,
                  ),

                  // select tip cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TipCard(
                        tip: "5",
                      ),
                      SizedBox(
                        width: 2.0.wp,
                      ),
                      const TipCard(
                        tip: "10",
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 1.25.hp,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TipCard(
                        tip: "15",
                      ),
                      SizedBox(
                        width: 2.0.wp,
                      ),
                      const TipCard(
                        tip: "20",
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 1.25.hp,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TipCard(
                        tip: "25",
                      ),
                      SizedBox(
                        width: 2.0.wp,
                      ),
                      SizedBox(
                        width: 41.0.wp,
                        child: const ReusableTextField(
                          icon: null,
                          verticalPadding: 0.75,
                          hintText: "Custom",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 2.0.hp,
                  ),

                  // number of people text
                  Text(
                    "Number of People",
                    style: AppTextStyles.darkMediumTextStyle.copyWith(fontSize: 12.0.sp),
                  ),

                  SizedBox(
                    height: 1.25.hp,
                  ),

                  // enter number of people text field
                  const ReusableTextField(
                    icon: Icons.person,
                    hintText: '',
                  ),

                  SizedBox(
                    height: 2.0.hp,
                  ),

                  const Spacer(),

                  // calculation card
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6.0.wp, vertical: 3.0.hp),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const CalculationRow(
                          amount: "4.27",
                          titleText: "Tip Amount",
                        ),
                        SizedBox(
                          height: 3.5.hp,
                        ),
                        const CalculationRow(
                          amount: "32.79",
                          titleText: "Total",
                        ),
                        SizedBox(
                          height: 4.0.hp,
                        ),
                        ReusableButton(
                          text: "RESET",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
