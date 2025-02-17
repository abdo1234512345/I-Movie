// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/treanding_list_view_body.dart';

class TreandingListView extends StatelessWidget {
  const TreandingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Moviess(Dio(), kind: 'trending').getTrandingMovies(),
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
