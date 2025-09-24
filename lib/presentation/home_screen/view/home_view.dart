import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/presentation/home_screen/widgets/app_background.dart';
import 'package:ui_task/presentation/resources/app_valus/app_valus.dart';
import 'package:ui_task/presentation/resources/strings/app_strings.dart';
import '../../resources/asset_manager/asset_manager.dart';
import '../../resources/text_style/text_style.dart';
import '../widgets/category_item.dart';
import '../widgets/character_item.dart';
import '../widgets/costume_list.dart';
import '../widgets/custome_bottom_bar.dart';
import '../widgets/moves_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> category = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Anime",
  ];

  final List<Map<String, String>> movies = [
    {
      "image": AppAssetManager.homeScreen1,
      "title": "Detective Conan",
      "subtitle": "Mystery",
    },
    {
      "image": AppAssetManager.homeScreen2,
      "title": "Hunter x Hunter",
      "subtitle": "Adventure",
    },
    {
      "image": AppAssetManager.homeScreen1,
      "title": "Detective Conan",
      "subtitle": "Mystery",
    },
    {
      "image": AppAssetManager.homeScreen2,
      "title": "Hunter x Hunter",
      "subtitle": "Adventure",
    },
  ];

  final List<Map<String, String>> characters = [
    {
      "image": AppAssetManager.character1,
      "title": "Gon Freecss",
      "subtitle": "Hunter x Hunter",
    },
    {
      "image": AppAssetManager.character2,
      "title": "Naruto Uzumaki",
      "subtitle": "Naruto",
    },
    {
      "image": AppAssetManager.character3,
      "title": "Luffy",
      "subtitle": "One Piece",
    },
    {
      "image": AppAssetManager.character1,
      "title": "Gon Freecss",
      "subtitle": "Hunter x Hunter",
    },
    {
      "image": AppAssetManager.character2,
      "title": "Naruto Uzumaki",
      "subtitle": "Naruto",
    },
    {
      "image": AppAssetManager.character3,
      "title": "Luffy",
      "subtitle": "One Piece",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      contentScreen: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
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
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.padding14),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.homeStartText,
                        style: AppTextStyle.textStyleBold24,
                      ),
                      SizedBox(height: AppSizedBox.sizedBox24),

                      SizedBox(
                        height: AppSizedBox.sizedBox30,
                        child: CostumeList<String>(
                          list: category,
                          itemBuilder: (item) => CostumeItemBuild(item: item),
                          spacing: AppSizedBox.sizedBox4,
                        ),
                      ),

                      SizedBox(height: AppSizedBox.sizedBox20),

                      SizedBox(
                        height: AppSizedBox.sizedBox290,
                        child: CostumeList<Map<String, String>>(
                          list: movies,
                          itemBuilder:
                              (item) => IconTwoTextItem(
                                imagePath: item["image"]!,
                                title: item["title"]!,
                                subtitle: item["subtitle"]!,
                              ),
                          spacing: AppSizedBox.sizedBox14,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          top: AppPadding.padding24,
                          bottom: AppPadding.padding24,
                        ),
                        child: Text(
                          AppStrings.topCharacters,
                          style: AppTextStyle.textStyleBold24,
                        ),
                      ),

                      SizedBox(
                        height: AppSizedBox.sizedBox143,
                        child: CostumeList<Map<String, String>>(
                          list: characters,
                          itemBuilder:
                              (item) => CharacterItem(
                                imagePath: item["image"]!,
                                title: item["title"]!,
                                subtitle: item["subtitle"]!,
                              ),
                          spacing: AppSizedBox.sizedBox7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: CostumeBottomBar()
      ),
    );
  }
}
