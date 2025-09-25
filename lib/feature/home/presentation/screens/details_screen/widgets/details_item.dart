import 'package:flutter/cupertino.dart';

import '../../../../../../core/app_constants/app_valus/app_valus.dart';
import '../../../../../../core/app_constants/color/app_colors.dart';
import '../../../../../../core/app_constants/text_style/text_style.dart';

class DetailsItem extends StatelessWidget {
  late String text;
  late String image;
  DetailsItem({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage(image), width: 17, height: 17),

        SizedBox(width: AppSizedBox.sizedBox7),
        Text(
          text,
          style: AppTextStyle.textStyleRegular13.copyWith(
            color: AppColors.primaryW,
          ),
        ),
      ],
    );
  }
}
