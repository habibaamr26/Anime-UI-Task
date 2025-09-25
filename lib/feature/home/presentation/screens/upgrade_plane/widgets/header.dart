

import 'package:flutter/cupertino.dart';

import '../../../../../../core/app_constants/asset_manager/asset_manager.dart';
import '../../../../../../core/app_constants/strings/app_strings.dart';
import '../../../../../../core/app_constants/text_style/text_style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Text(
            AppStrings.upgradePlan,
            style: AppTextStyle.textStyleBold22
        ),
        Spacer(),
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image(image: AssetImage(AppAssetManager.cancel)),
        )
      ],
    );
  }
}
