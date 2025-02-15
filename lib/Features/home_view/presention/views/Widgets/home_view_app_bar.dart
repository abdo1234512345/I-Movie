import 'package:flutter/material.dart';
import 'package:movieapp/Constans/styles.dart';
import 'package:movieapp/Features/search_view/presention/view/search_view.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.movie_creation_outlined,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'I Movie',
          style: AppStyles.style20bold,
        ),
        SizedBox(
          width: 160,
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchView()));
          },
          icon: Icon(
            Icons.search,
            size: 28,
          ),
        )
      ],
    );
  }
}
