// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/treanding_list_view_body.dart';

class TreandingListView extends StatefulWidget {
  const TreandingListView({super.key});

  @override
  State<TreandingListView> createState() => _TreandingListViewState();
}

class _TreandingListViewState extends State<TreandingListView> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Moviess(Dio(), kind: 'trending').getTrandingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MoviesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TreandingListViewBody(movie: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text("error");
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
