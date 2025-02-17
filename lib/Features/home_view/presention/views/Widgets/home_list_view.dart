import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/movie_details_view_body.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key, required this.movie});

  final List<MoviesModel> movie;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => MovieDetailsViewBody(
                        movie: movie[index],
                      ))),
          child: Image.network(
            movie[index].poster_path,
            width: 300,
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        autoPlayCurve: Curves.easeInOutCubicEmphasized,
        enlargeCenterPage: true,
        viewportFraction: 0.6,
        scrollDirection: Axis.horizontal,
        height: 300,
      ),
      itemCount: movie.length,
    );
  }
}
