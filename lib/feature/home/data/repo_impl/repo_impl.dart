
import '../../domain/models/character.dart';
import '../../domain/models/move.dart';
import '../../domain/repo_interface/reposatory_interface.dart';
import '../local_data_source/local_data_source.dart';
import '../response/move.dart';


class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl(this.localDataSource);

  @override
  List<String> getCategories() => localDataSource.getCategories();

  @override
  List<Movie> getMovies() {
    List<MovieModel> response=localDataSource.getMovies();

    //  MovieModel → Movie Entity
   // return localDataSource.getMovies().map((m) => m.toEntity()).toList();
    return response.map((object) => object.toEntity()).toList();
  }

  @override
  List<Character> getCharacters() {
    //  CharacterModel → Character Entity
    return localDataSource.getCharacters().map((object) => object.toEntity()).toList();
  }
}
