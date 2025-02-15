import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.movie});
  final MoviesModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieDetailsViewBody(movie: movie),
    );
  }
}
