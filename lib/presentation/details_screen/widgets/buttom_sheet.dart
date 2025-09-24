import 'package:flutter/material.dart';
import 'package:ui_task/presentation/resources/app_valus/app_valus.dart';
import 'package:ui_task/presentation/resources/color/app_colors.dart';
import '../../resources/asset_manager/asset_manager.dart';
import '../../resources/strings/app_strings.dart';

import 'bottom_sheet_item.dart';

class ActionBottomSheet extends StatelessWidget {
  final VoidCallback onPreviewTap;
  final VoidCallback onWatchNowTap;

  const ActionBottomSheet({
    super.key,
    required this.onPreviewTap,
    required this.onWatchNowTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      backgroundColor: AppColors.darkBlue,
      builder:
          (_) => SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.padding14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Preview Button
                  CostumeButtonSheet(
                    label: AppStrings.preview,
                    color: AppColors.gray,
                    image: AppAssetManager.alarm,
                    onTap: onPreviewTap,
                  ),
                  const SizedBox(width: AppSizedBox.sizedBox16),
                  // Watch Now Button
                  CostumeButtonSheet(
                    label: AppStrings.watchNow,
                    color: AppColors.listItemColor,
                    image: AppAssetManager.eye,
                    onTap: onWatchNowTap,
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
