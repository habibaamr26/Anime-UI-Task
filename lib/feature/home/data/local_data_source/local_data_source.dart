
import '../../../../core/app_constants/asset_manager/asset_manager.dart';
import '../response/character.dart';
import '../response/move.dart';


class HomeLocalDataSource {
  List<String> getCategories() {
    return ["All", "Popular", "Trending", "New Releases", "Anime"];
  }

  List<MovieModel> getMovies() {
    return [
      MovieModel(
        image: AppAssetManager.homeScreen1,
        title: "Detective Conan",
        subtitle: "Mystery",
      ),
      MovieModel(
        image: AppAssetManager.homeScreen2,
        title: "Hunter x Hunter",
        subtitle: "Adventure",
      ),

    ];
  }

  List<CharacterModel> getCharacters() {
    return [
      CharacterModel(
        image: AppAssetManager.character1,
        title: "Gon Freecss",
        subtitle: "Hunter x Hunter",
      ),
      CharacterModel(
        image: AppAssetManager.character2,
        title: "Naruto Uzumaki",
        subtitle: "Naruto",
      ),
      CharacterModel(
        image: AppAssetManager.character3,
        title: "Luffy",
        subtitle: "One Piece",
      ),
      CharacterModel(
        image: AppAssetManager.character1,
        title: "Gon Freecss",
        subtitle: "Hunter x Hunter",
      ),
    ];
  }
}
