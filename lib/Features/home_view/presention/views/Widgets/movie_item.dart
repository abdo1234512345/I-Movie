import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    String url = 'https://image.tmdb.org/t/p/w500';

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
          width: MediaQuery.sizeOf(context).width * .3,
          height: MediaQuery.sizeOf(context).height * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [Image.network(url + moviesModel.poster_path)],
          )),
    );
  }
}
