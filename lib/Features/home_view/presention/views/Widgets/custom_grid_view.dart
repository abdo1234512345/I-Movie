// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/custom_category_body.dart';

class CustomCateory extends StatelessWidget {
  const CustomCateory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomCateoryBody());
  }
}

class CustomCateoryBody extends StatefulWidget {
  const CustomCateoryBody({super.key});

  @override
  State<CustomCateoryBody> createState() => _CustomCateoryBodyState();
}

class _CustomCateoryBodyState extends State<CustomCateoryBody> {
  List<MoviesModel> movie = [];
  @override
  void initState() {
    super.initState();
    GetNewMovies();
  }

  Future<void> GetNewMovies() async {
    movie = await Moviess(Dio()).getTrandingMovies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomCategorybody(
      movie: movie,
      text: 'Drama',
    );
  }
}
