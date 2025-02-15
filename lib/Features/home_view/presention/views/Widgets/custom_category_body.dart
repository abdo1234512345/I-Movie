import 'package:flutter/material.dart';
import 'package:movieapp/Constans/styles.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/custom_sliver_grid_view_body.dart';

class CustomCategorybody extends StatelessWidget {
  const CustomCategorybody({
    super.key,
    required this.movie,
    required this.text,
  });

  final List<MoviesModel> movie;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Text(
              text,
              style: AppStyles.style20bold,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5,
          ),
        ),
        CustomSliverGridViewBody(movie: movie)
      ],
    );
  }
}
