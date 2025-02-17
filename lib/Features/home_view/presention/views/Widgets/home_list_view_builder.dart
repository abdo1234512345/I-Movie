import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/home_list_view.dart';

class HomeListViewBuilder extends StatefulWidget {
  const HomeListViewBuilder({super.key});

  @override
  State<HomeListViewBuilder> createState() => _HomeListViewBuilderState();
}

class _HomeListViewBuilderState extends State<HomeListViewBuilder> {
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
          return HomeListView(movie: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text("error");
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
