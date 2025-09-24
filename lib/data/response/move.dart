

import '../../domain/models/move.dart';

class MovieModel {
  final String image;
  final String title;
  final String subtitle;

  MovieModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      image: json["image"],
      title: json["title"],
      subtitle: json["subtitle"],
    );
  }

  Movie toEntity() {
    return Movie(
      image: image,
      title: title,
      subtitle: subtitle,
    );
  }
}
