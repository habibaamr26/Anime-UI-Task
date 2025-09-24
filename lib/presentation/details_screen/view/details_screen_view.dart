import 'package:flutter/material.dart';
import 'package:ui_task/presentation/resources/app_valus/app_valus.dart';
import 'package:ui_task/presentation/resources/color/app_colors.dart';
import 'package:ui_task/presentation/resources/strings/app_strings.dart';
import 'package:ui_task/presentation/resources/text_style/text_style.dart';
import '../../resources/asset_manager/asset_manager.dart';
import '../widgets/buttom_sheet.dart';
import '../widgets/costume_divider.dart';
import '../widgets/costume_tag.dart';
import '../widgets/details_item.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C1E51),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image(
                  image: AssetImage(AppAssetManager.detailsScreen),
                  width: double.infinity,
                  height: 520,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 430,
                  left: 90,
                  child: Image(image: AssetImage(AppAssetManager.demons)),
                ),
              ],
            ),
            SizedBox(height: AppSizedBox.sizedBox76),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tags(name: 'Dark Fantasy'),
                SizedBox(width: 8),
                Tags(name: 'Action'),
                SizedBox(width: 8),
                Tags(name: 'Adventure'),
              ],
            ),
            SizedBox(height: AppSizedBox.sizedBox23),
            CostumeDivider(width: 334),
            SizedBox(height: AppSizedBox.sizedBox10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DetailsItem(image: AppAssetManager.eye, text: AppStrings.views),
                DetailsItem(
                  image: AppAssetManager.handsClapping,
                  text: AppStrings.clap,
                ),
                DetailsItem(
                  image: AppAssetManager.season,
                  text: AppStrings.seasons,
                ),
              ],
            ),
            SizedBox(height: AppSizedBox.sizedBox10),
            CostumeDivider(width: 334),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppPadding.padding18,
                    right: AppPadding.padding7,
                  ),
                  child: Image(
                    image: AssetImage(AppAssetManager.fire),
                    width: 29,
                    height: 32,
                  ),
                ),
                Expanded(
                  child: Text(
                    ' Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                    softWrap: true,
                    style: AppTextStyle.textStyleMedium14.copyWith(
                      color: AppColors.primaryW,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: AppSizedBox.sizedBox76),
          ],
        ),
      ),
      bottomSheet: ActionBottomSheet(
        onPreviewTap: () {
         Navigator.pushNamed(context, "UpgradePlaneScreen");
        },
        onWatchNowTap: () {
          print("Watch Now tapped");
        },
      ),
    );
  }
}
