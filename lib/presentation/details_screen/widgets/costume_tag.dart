import 'package:flutter/material.dart';
import '../../resources/app_valus/app_valus.dart';
import '../../resources/color/app_colors.dart';
import '../../resources/text_style/text_style.dart';

class Tags extends StatelessWidget {
  late String name;
  Tags({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding12,
        vertical: AppPadding.padding6,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(AppBorderRadius.borderRadius17),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Text(
        name,
        style: AppTextStyle.textStyleMedium11.copyWith(
          color: AppColors.primaryW,
        ),
      ),
    );
  }
}
