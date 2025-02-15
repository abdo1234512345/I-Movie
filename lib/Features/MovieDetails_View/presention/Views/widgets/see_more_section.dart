import 'package:flutter/material.dart';
import 'package:movieapp/Constans/styles.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/top_rated_List_view.dart';

class SeeMoreSection extends StatelessWidget {
  const SeeMoreSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "See More",
                style: AppStyles.style20bold,
              ),
            ),
            SizedBox(height: 5),
            TopRatedListView(),
            SizedBox(height: 5)
          ],
        ),
      ),
    ]);
  }
}
