import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/movie_details_view_body.dart';

class CustomSliverGridViewBody extends StatelessWidget {
  const CustomSliverGridViewBody({
    super.key,
    required this.movie,
  });

  final List<MoviesModel> movie;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(10),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MovieDetailsViewBody(movie: movie[index]))),
                child: Image.network(
                  movie[index].poster_path,
                  height: MediaQuery.sizeOf(context).height * .3,
                  width: MediaQuery.sizeOf(context).width * .5,
                ),
              ),
            );
          },
          childCount: movie.length, // Total number of items
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
