import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/app_constants/asset_manager/asset_manager.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: -148.61,
      left: 116.39,
      child: Transform.rotate(
        angle: 12.84 * (pi / 180),
        child: SvgPicture.asset(
          AppAssetManager.star1,
          width: 432,
          height: 432,
        ),
      ),
    );
  }
}
