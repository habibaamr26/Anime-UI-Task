
import '../../domain/models/character.dart';
import '../../domain/models/move.dart';

import '../../domain/repository/repository.dart';
import '../local_data_source/local_data_source.dart';



class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl(this.localDataSource);

  @override
  List<String> getCategories() => localDataSource.getCategories();

  @override
  List<Movie> getMovies() {
    // هنا بنحوّل MovieModel → Movie Entity
    return localDataSource.getMovies().map((m) => m.toEntity()).toList();
  }

  @override
  List<Character> getCharacters() {
    // هنا بنحوّل CharacterModel → Character Entity
    return localDataSource.getCharacters().map((c) => c.toEntity()).toList();
  }
}
