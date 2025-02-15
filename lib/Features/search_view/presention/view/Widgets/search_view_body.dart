// ignore_for_file: empty_catches

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Features/search_view/presention/view/Widgets/search_result.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  SearchViewBodyState createState() => SearchViewBodyState();
}

class SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController _controller = TextEditingController();
  List<dynamic> _results = [];
  bool _isLoading = false;

  Future<void> _search() async {
    if (_controller.text.isEmpty) return;
    setState(() => _isLoading = true);

    try {
      final response = await Dio().get(
        'https://api.themoviedb.org/3/search/movie',
        queryParameters: {
          'api_key': 'a58058cdf2b779da47dd67884dd07500',
          'page': 1,
          'query': _controller.text,
        },
      );

      setState(() => _results = response.data['results'] ?? []);
    } catch (e) {}

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controller,
              onSubmitted: (value) => _search(),
              decoration: InputDecoration(
                hintText: 'Search for a movie...',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _search,
                ),
              ),
            ),
            SizedBox(height: 16),
            _isLoading
                ? CircularProgressIndicator()
                : SearchResult(results: _results),
          ],
        ),
      ),
    );
  }
}
