// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/treanding_list_view_body.dart';

class TreandingListView extends StatefulWidget {
  const TreandingListView({super.key});

  @override
  State<TreandingListView> createState() => _TreandingListViewState();
}

class _TreandingListViewState extends State<TreandingListView> {
  List<MoviesModel> movie = [];
  @override
  void initState() {
    super.initState();
    clearCache();

    GetTreandingMovies();
  }

  // ignore: non_constant_identifier_names
  Future<void> GetTreandingMovies() async {
    movie = await Moviess(Dio()).getTrandingMovies();
    setState(() {});
  }

  Future<void> clearCache() async {
    await DefaultCacheManager().emptyCache();
  }

  @override
  Widget build(BuildContext context) {
    return TreandingListViewBody(movie: movie);
  }
}
