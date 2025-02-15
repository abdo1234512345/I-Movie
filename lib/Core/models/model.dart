// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings

class MoviesModel {
  final String title;
  final String overview;
  final String poster_path;

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      title: json['title'],
      overview: json['overview'],
      poster_path: 'https://image.tmdb.org/t/p/w500' + json['poster_path'],
    );
  }

  MoviesModel({
    required this.title,
    required this.overview,
    required this.poster_path,
  });
}
