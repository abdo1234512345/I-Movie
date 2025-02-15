// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/top_rated_list_view_body.dart';

class TopRatedListView extends StatefulWidget {
  const TopRatedListView({super.key});

  @override
  State<TopRatedListView> createState() => _TopRatedListView();
}

class _TopRatedListView extends State<TopRatedListView> {
  List<MoviesModel> movie = [];
  @override
  void initState() {
    super.initState();
    clearCache();

    GetRatedMovies();
  }

  // ignore: non_constant_identifier_names
  Future<void> GetRatedMovies() async {
    movie = await Moviess(Dio()).topRated();
    setState(() {});
  }

  Future<void> clearCache() async {
    await DefaultCacheManager().emptyCache();
  }

  @override
  Widget build(BuildContext context) {
    return TopRatedListViewBody(movie: movie);
  }
}
