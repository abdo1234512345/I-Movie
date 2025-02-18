// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/top_rated_list_view_body.dart';

class TopRatedListView extends StatefulWidget {
  const TopRatedListView({super.key});

  @override
  State<TopRatedListView> createState() => _TopRatedListViewState();
}

class _TopRatedListViewState extends State<TopRatedListView> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Moviess(Dio(), kind: 'top_rated').topRated();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MoviesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TopRatedListViewBody(movie: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text("error");
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
