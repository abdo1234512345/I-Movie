import 'package:flutter/material.dart';

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
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: _results[index]['poster_path'] != null
                  ? Image.network(
                      'https://image.tmdb.org/t/p/w500${_results[index]['poster_path']}',
                      width: 120,
                      height: 160,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: 120,
                      height: 160,
                      color: Colors.grey,
                      child:
                          Icon(Icons.image_not_supported, color: Colors.white),
                    ),
              title: Text(
                _results[index]['title'] ?? 'No Title',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
