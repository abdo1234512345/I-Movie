// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/upcoming_list_view_body.dart';

class UpcommingListView extends StatefulWidget {
  const UpcommingListView({super.key});

  @override
  State<UpcommingListView> createState() => _UpcommingListViewState();
}

class _UpcommingListViewState extends State<UpcommingListView> {
  List<MoviesModel> movie = [];

  @override
  void initState() {
    super.initState();
    clearCache();
    getUpcomming();
  }

  Future<void> getUpcomming() async {
    movie = await Moviess(Dio()).upcomming();
    setState(() {});
  }

  Future<void> clearCache() async {
    await DefaultCacheManager().emptyCache();
  }

  @override
  Widget build(BuildContext context) {
    return UpcomingListViewBody(movie: movie);
  }
}
