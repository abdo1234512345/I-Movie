import 'package:flutter/material.dart';
import 'package:movieapp/Constans/styles.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/top_rated_List_view.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/treanding_List_view.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/upcoming_List_view.dart';

class MovieShowSection extends StatelessWidget {
  const MovieShowSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text('Trending Now', style: AppStyles.style20bold)),
      SizedBox(height: 10),
      TreandingListView(),
      SizedBox(height: 10),
      Align(
        alignment: Alignment.centerLeft,
        child: Text('Upcoming', style: AppStyles.style20bold),
      ),
      SizedBox(height: 10),
      UpcommingListView(),
      SizedBox(height: 10),
      Align(
        alignment: Alignment.centerLeft,
        child: Text('Top Rated', style: AppStyles.style20bold),
      ),
      SizedBox(height: 10),
      TopRatedListView(),
    ]);
  }
}
