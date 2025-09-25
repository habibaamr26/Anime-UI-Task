import 'package:flutter/material.dart';
import 'package:ui_task/core/dependency_injection/di.dart';
import 'package:ui_task/feature/home/presentation/screens/home_screen/widgets/background_image.dart';
import 'package:ui_task/feature/home/presentation/screens/home_screen/widgets/category_item.dart';
import 'package:ui_task/feature/home/presentation/screens/home_screen/widgets/character_item.dart';
import 'package:ui_task/feature/home/presentation/screens/home_screen/widgets/costume_list.dart';
import 'package:ui_task/feature/home/presentation/screens/home_screen/widgets/custome_bottom_bar.dart';
import 'package:ui_task/feature/home/presentation/screens/home_screen/widgets/moves_item.dart';
import '../../../../../core/app_constants/app_valus/app_valus.dart';
import '../../../../../core/app_constants/strings/app_strings.dart';
import '../../../../../core/app_constants/text_style/text_style.dart';
import '../../../domain/models/character.dart';
import '../../../domain/models/move.dart';
import '../../../domain/repo_interface/reposatory_interface.dart';
import '../../widget/app_background.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeRepository repo = instance();
  @override
  Widget build(BuildContext context) {
    return AppBackground(
      contentScreen: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              BackgroundImage(),

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
                          list: repo.getCategories(),
                          itemBuilder: (item) => CostumeItemBuild(item: item),
                          spacing: AppSizedBox.sizedBox4,
                        ),
                      ),

                      SizedBox(height: AppSizedBox.sizedBox20),

                      SizedBox(
                        height: AppSizedBox.sizedBox290,
                        child: CostumeList<Movie>(
                          list: repo.getMovies(),
                          itemBuilder:
                              (item) => IconTwoTextItem(
                                imagePath: item.image,
                                title: item.title,
                                subtitle: item.subtitle,
                              ),
                          spacing: AppSizedBox.sizedBox4,
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
                        child: CostumeList<Character>(
                          list: repo.getCharacters(),
                          itemBuilder:
                              (item) => CharacterItem(
                                imagePath: item.image,
                                title: item.title,
                                subtitle: item.subtitle,
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

        bottomNavigationBar: CostumeBottomBar(),
      ),
    );
  }
}
