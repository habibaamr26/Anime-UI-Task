import 'package:flutter/material.dart';

import '../../../../../../core/app_constants/app_valus/app_valus.dart';
import '../../../../../../core/app_constants/color/app_colors.dart';
import '../../../../../../core/app_constants/text_style/text_style.dart';




class CostumeButtonSheet extends StatelessWidget {
  late String label;
  late String image;
  void Function()? onTap;
  late Color color;
  CostumeButtonSheet({
    super.key,
    required this.label,
    required this.color,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppBorderRadius.borderRadius37),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(image)),
                SizedBox(width: AppSizedBox.sizedBox4),
                Text(
                  label,
                  style: AppTextStyle.textStyleSemiBold14.copyWith(
                    color: AppColors.primaryW,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
