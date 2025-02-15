import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/movie_details_content.dart';
import 'package:movieapp/Features/home_view/presention/views/home_view.dart';

class MovieDetailsViewBody extends StatelessWidget {
  final MoviesModel movie;
  const MovieDetailsViewBody({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            MovieDetailsContent(movie: movie),
          ],
        ),
      ),
    );
  }
}
