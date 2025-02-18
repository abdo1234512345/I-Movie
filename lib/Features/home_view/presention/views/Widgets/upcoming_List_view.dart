// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Core/models/model.dart';
import 'package:movieapp/Core/services/getMovies.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/upcoming_list_view_body.dart';

class UpcommingListView extends StatefulWidget {
  const UpcommingListView({super.key});

  @override
  State<UpcommingListView> createState() => _UpcommingListViewState();
}

class _UpcommingListViewState extends State<UpcommingListView> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Moviess(Dio(), kind: 'upcoming').topRated();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MoviesModel>>(
      future: future,
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
