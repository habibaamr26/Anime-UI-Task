import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/app_valus/app_valus.dart';
import '../../resources/asset_manager/asset_manager.dart';
import '../../resources/color/app_colors.dart';
import '../../resources/strings/app_strings.dart';
import '../../resources/text_style/text_style.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String period;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    Key? key,
    required this.title,
    required this.price,
    required this.period,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 102,
        margin: const EdgeInsets.only(bottom: 13),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkBlue : AppColors.primaryW,
          borderRadius: BorderRadius.circular(AppBorderRadius.borderRadius20),
        ),
        child: Row(
          children: [
            Image(image: AssetImage(AppAssetManager.FilesFolders)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.textStyleBold16.copyWith(
                      color: isSelected ? AppColors.primaryW : Colors.black,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: price,
                          style: AppTextStyle.textStyleBold16.copyWith(
                            color: isSelected ? AppColors.primaryW : Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: period,
                          style: AppTextStyle.textStyleBold16.copyWith(
                            color: isSelected ? AppColors.stringColor : AppColors.gray,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    AppStrings.includesFamilySharing,
                    style: AppTextStyle.textStyleBold12.copyWith(
                      color: isSelected ? AppColors.stringColor : AppColors.gray,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppColors.listItemColor : AppColors.primaryW,
              ),
              child: isSelected
                  ? const Center(child: Icon(Icons.check,))
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
