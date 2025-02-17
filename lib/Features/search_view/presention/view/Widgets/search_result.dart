import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Features/search_view/presention/view/Widgets/no_image.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
    required List results,
  }) : _results = results;

  final List _results;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: _results.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 120,
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: _results[index]['poster_path'] != null
                  ? SizedBox(
                      height: 100,
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://image.tmdb.org/t/p/w500${_results[index]['poster_path']}',
                      ),
                    )
                  : NOImage(),
              title: Text(
                _results[index]['title'] ?? 'No Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    ));
  }
}
