

import 'package:flutter/material.dart';

import '../../details_screen/view/details_screen_view.dart';
import '../../resources/app_valus/app_valus.dart';
import '../../resources/text_style/text_style.dart';

class IconTwoTextItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const IconTwoTextItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "DetailsScreen");
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(AppBorderRadius.borderRadius12),
              child:Image.asset(imagePath,fit: BoxFit.cover,width: 184,height: 240,)
          ),
        ),
        SizedBox(height:AppSizedBox.sizedBox8),
        Text(
            title,
            style: AppTextStyle.textStyleBold14
        ),
        Text(
          subtitle,
          style: AppTextStyle.textStyleMedium12.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}











