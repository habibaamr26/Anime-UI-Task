
import 'package:flutter/material.dart';

import '../../../../../../core/app_constants/app_valus/app_valus.dart';
import '../../../../../../core/app_constants/text_style/text_style.dart';
class CharacterItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const CharacterItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Column(
        children: [
          CircleAvatar(
            radius: 43,
            backgroundImage:AssetImage(imagePath),),
          SizedBox(height: AppSizedBox.sizedBox10),
          Text(title, style: AppTextStyle.textStyleSemiBold16),
          Text(
            subtitle,
            style: AppTextStyle.textStyleSemiBold14.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
