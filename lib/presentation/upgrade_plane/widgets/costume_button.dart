

import 'package:flutter/material.dart';

import '../../resources/color/app_colors.dart';
import '../../resources/strings/app_strings.dart';
import '../../resources/text_style/text_style.dart';

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
          backgroundColor: AppColors.listItemColor,
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
