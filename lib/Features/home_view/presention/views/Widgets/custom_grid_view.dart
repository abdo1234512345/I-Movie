// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/custom_category_body.dart';

class CustomCateory extends StatelessWidget {
  const CustomCateory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomCateoryBody());
  }
}

class CustomCateoryBody extends StatelessWidget {
  const CustomCateoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Moviess(Dio(), kind: 'top_rated').getTrandingMovies(),
      builder: (context, snapshot) {
        return CustomCategorybody(
          movie: snapshot.data ?? [],
          text: 'Drama',
        );
      },
    );
  }
}
