
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/app_valus/app_valus.dart';
import '../../resources/asset_manager/asset_manager.dart';
import '../../resources/color/app_colors.dart';
import '../../resources/text_style/text_style.dart';

class CostumeBottomBar extends StatelessWidget {
  const CostumeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Color(0xFF5436F8),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.padding14,
              vertical: AppPadding.padding7,
            ),
            decoration: BoxDecoration(
              color: AppColors.listItemColor,
              borderRadius: BorderRadius.circular(
                AppBorderRadius.borderRadius20,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                SvgPicture.asset(AppAssetManager.homeBottom),
                SizedBox(width: AppSizedBox.sizedBox7),
                Text(
                  "Home",
                  style: AppTextStyle.textStyleSemiBold14.copyWith(
                    color: AppColors.primaryW,
                  ),
                ),
              ],
            ),
          ),
          label: "",
        ),

        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssetManager.groupBottom),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssetManager.searchNormal),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssetManager.world),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssetManager.setting),
          label: "",
        ),
      ],
    );
  }
}
