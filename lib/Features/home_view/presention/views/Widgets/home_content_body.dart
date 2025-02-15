import 'package:flutter/material.dart';
import 'package:movieapp/Constans/styles.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/custom_container.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/home_list_view_builder.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/home_view_app_bar.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/movie_show_section.dart';

class HomeContentBody extends StatelessWidget {
  const HomeContentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        HomeViewAppBar(),
        SizedBox(height: 20),
        Align(
            alignment: Alignment.centerLeft,
            child: Text('New Releases 🔥', style: AppStyles.style20bold)),
        SizedBox(height: 10),
        HomeListViewBuilder(),
        SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildCategoryContainer(title: 'Comedy', color: Colors.blue),
              BuildCategoryContainer(title: 'Drama', color: Colors.green),
              BuildCategoryContainer(title: 'Horror', color: Colors.red),
              BuildCategoryContainer(title: 'Action', color: Colors.orange),
            ],
          ),
        ),
        SizedBox(height: 40),
        MovieShowSection(),
      ],
    );
  }
}
