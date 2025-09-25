

import 'package:flutter/material.dart';

import '../../../../../../core/app_constants/color/app_colors.dart';
import '../../../../../../core/app_constants/strings/app_strings.dart';
import '../../../../../../core/app_constants/text_style/text_style.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          // Handle subscription
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          elevation: 0,
        ),
        child: Text(
            AppStrings.continueS,
            style: AppTextStyle.textStyleBold16.copyWith(color: AppColors.primaryW)
        ),
      ),
    );
  }
}
