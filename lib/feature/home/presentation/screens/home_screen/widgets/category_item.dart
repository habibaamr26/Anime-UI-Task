
import 'package:flutter/cupertino.dart';

import '../../../../../../core/app_constants/app_valus/app_valus.dart';
import '../../../../../../core/app_constants/color/app_colors.dart';
import '../../../../../../core/app_constants/text_style/text_style.dart';
class CostumeItemBuild extends StatelessWidget {
  final String item;
  const CostumeItemBuild({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.padding6,
          horizontal: AppPadding.padding12,
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryW,
          borderRadius: BorderRadius.circular(AppBorderRadius.borderRadius100),
        ),
        child: Text(
          item,
          style: AppTextStyle.textStyleBold14.copyWith(
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}

