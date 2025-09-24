import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_task/presentation/home_screen/widgets/app_background.dart';
import 'package:ui_task/presentation/resources/app_valus/app_valus.dart';
import 'package:ui_task/presentation/resources/color/app_colors.dart';
import 'package:ui_task/presentation/resources/text_style/text_style.dart';
import '../../resources/asset_manager/asset_manager.dart';
import '../../resources/strings/app_strings.dart';
import '../widgets/costume_button.dart';
import '../widgets/header.dart';
import '../widgets/plane_card.dart';

class UpgradePlaneScreen extends StatefulWidget {
  @override
  _UpgradePlaneScreenState createState() => _UpgradePlaneScreenState();
}

class _UpgradePlaneScreenState extends State<UpgradePlaneScreen> {
  int selectedPlan = 0; // 0 for Monthly, 1 for Annually

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      contentScreen: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 149,
                left: 160,
                child: Transform.rotate(
                  angle: 81.74 * (pi / 180),
                  child: SvgPicture.asset(
                    AppAssetManager.star1,
                    width: 432,
                    height: 432,
                  ),
                ),
              ),
              Positioned(
                top: -207.07,
                left: -170,
                child: Transform.rotate(
                  angle: 42.01 * (pi / 180),
                  child: SvgPicture.asset(
                    AppAssetManager.star1,
                    width: 432,
                    height: 432,
                  ),
                ),
              ),

              SingleChildScrollView(
                padding: EdgeInsets.all(AppPadding.padding16),
                child: Column(
                  children: [
                    Header(),

                    // Illustration
                    Image(
                      image: AssetImage(AppAssetManager.RocketBoy),
                      width: 207,
                      height: 207,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: AppSizedBox.sizedBox4),

                    // Title and Description
                    Text(
                      'Seamless Anime\nExperience, Ad-Free.',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.textStyleBold24,
                    ),

                    SizedBox(height: AppSizedBox.sizedBox4),

                    Text(
                      'Enjoy unlimited access to all anime without\ninterruptions',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.textStyleMedium14.copyWith(
                        color: AppColors.gray,
                      ),
                    ),

                    SizedBox(height: AppSizedBox.sizedBox40),

                    // Monthly Plan
                    PlanCard(
                      title: AppStrings.monthly,
                      price: AppStrings.usd,
                      period: AppStrings.month,
                      isSelected: selectedPlan == 0,
                      onTap: () => setState(() => selectedPlan = 0),
                    ),
                    PlanCard(
                      title: AppStrings.annually,
                      price: AppStrings.usd,
                      period: AppStrings.year,
                      isSelected: selectedPlan == 1,
                      onTap: () => setState(() => selectedPlan = 1),
                    ),
                    SizedBox(height:  AppSizedBox.sizedBox50),

                    // Continue Button
                    CostumeButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
