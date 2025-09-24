

import 'package:flutter/cupertino.dart';

import '../../resources/color/app_colors.dart';

class AppBackground extends StatelessWidget {
  late Widget contentScreen;
   AppBackground({super.key,required this.contentScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.backgroundColor,
              AppColors.primaryW,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      child: contentScreen,
    );
  }
}
