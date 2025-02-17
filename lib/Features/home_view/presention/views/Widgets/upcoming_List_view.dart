// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/upcoming_list_view_body.dart';

class UpcommingListView extends StatelessWidget {
  const UpcommingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Moviess(Dio(), kind: 'upcoming').topRated(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return UpcomingListViewBody(movie: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text("error");
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
