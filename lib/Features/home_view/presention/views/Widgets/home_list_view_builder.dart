import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/home_list_view.dart';

class HomeListViewBuilder extends StatefulWidget {
  const HomeListViewBuilder({
    super.key,
  });

  @override
  State<HomeListViewBuilder> createState() => _HomeListViewBuilderState();
}

class _HomeListViewBuilderState extends State<HomeListViewBuilder> {
  List<MoviesModel> movie = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    GetMovies();
  }

  // ignore: non_constant_identifier_names
  Future<void> GetMovies() async {
    movie = await Moviess(Dio()).getMovies();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : HomeListView(
            movie: movie,
          );
  }
}
