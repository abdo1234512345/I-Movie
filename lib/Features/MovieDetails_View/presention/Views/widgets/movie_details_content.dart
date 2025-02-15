import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';
import 'package:movieapp/Constans/styles.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/custom_bottom.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/see_more_section.dart';

class MovieDetailsContent extends StatelessWidget {
  const MovieDetailsContent({
    super.key,
    required this.movie,
  });

  final MoviesModel movie;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        width: double.infinity,
        height: 250,
        child: Image.network(
          movie.poster_path,
        ),
      ),
      SizedBox(height: 16),
      Text(movie.title, style: AppStyles.style20bold),
      SizedBox(height: 16),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: ExpandableText(
            movie.overview,
            style:
                AppStyles.style16regular.copyWith(fontWeight: FontWeight.w300),
            trimType: TrimType.lines,
            trim: 3,
            linkTextStyle:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          )),
      SizedBox(height: 20),
      ButtomPlayandDownload(),
      SeeMoreSection(),
    ]);
  }
}
