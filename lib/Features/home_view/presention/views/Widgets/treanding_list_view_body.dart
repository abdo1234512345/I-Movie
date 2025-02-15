import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/movie_details_view_body.dart';

class TreandingListViewBody extends StatelessWidget {
  const TreandingListViewBody({
    super.key,
    required this.movie,
  });

  final List<MoviesModel> movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * .24,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MovieDetailsViewBody(movie: movie[index])));
                  },
                  child: CachedNetworkImage(
                    imageUrl: movie[index].poster_path,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.error, color: Colors.red),
                  ),
                ),
              ),
            );
          },
          itemCount: movie.length,
          scrollDirection: Axis.horizontal,
        ));
  }
}
