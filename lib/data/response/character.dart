
import '../../domain/models/character.dart';

class CharacterModel {
  final String image;
  final String title;
  final String subtitle;

  CharacterModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      image: json["image"],
      title: json["title"],
      subtitle: json["subtitle"],
    );
  }

  Character toEntity() {
    return Character(
      image: image,
      title: title,
      subtitle: subtitle,
    );
  }
}
