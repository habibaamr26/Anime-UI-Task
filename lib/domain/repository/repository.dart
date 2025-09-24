
import '../models/character.dart';
import '../models/move.dart';



abstract class HomeRepository {
   List<String> getCategories();
  List<Movie> getMovies();       // Entities
  List<Character> getCharacters(); // Entities
}
