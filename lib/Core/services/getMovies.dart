// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:movieapp/Core/models/model.dart';

class Moviess {
  final Dio dio;

  Moviess(this.dio);

  Future<List<MoviesModel>> getMovies() async {
    try {
      var response = await dio.get(
          'https://api.themoviedb.org/3/discover/movie?include_adult=true&include_video=false&language=en-US&page=1&sort_by=popularity.desc&api_key=a58058cdf2b779da47dd67884dd07500');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> result = jsondata['results'];

      List<MoviesModel> movielist = [];

      for (var movie in result) {
        MoviesModel movieModel = MoviesModel.fromJson(movie);
        movielist.add(movieModel);
      }

      return movielist;
    } catch (e) {
      return [];
    }
  }

  Future<List<MoviesModel>> getTrandingMovies() async {
    try {
      var response = await dio.get(
          'https://api.themoviedb.org/3/trending/movie/day?language=en-US&api_key=a58058cdf2b779da47dd67884dd07500');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> result = jsondata['results'];

      List<MoviesModel> movielist = [];

      for (var movie in result) {
        MoviesModel movieModel = MoviesModel.fromJson(movie);
        movielist.add(movieModel);
      }

      return movielist;
    } catch (e) {
      return [];
    }
  }

  Future<List<MoviesModel>> topRated() async {
    try {
      var response = await dio.get(
          'https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1&api_key=a58058cdf2b779da47dd67884dd07500');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> result = jsondata['results'];

      List<MoviesModel> movielist = [];

      for (var movie in result) {
        MoviesModel movieModel = MoviesModel.fromJson(movie);
        movielist.add(movieModel);
      }

      return movielist;
    } catch (e) {
      return [];
    }
  }

  Future<List<MoviesModel>> upcomming() async {
    try {
      var response = await dio.get(
          'https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1&api_key=a58058cdf2b779da47dd67884dd07500');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> result = jsondata['results'];

      List<MoviesModel> movielist = [];

      for (var movie in result) {
        MoviesModel movieModel = MoviesModel.fromJson(movie);
        movielist.add(movieModel);
      }

      return movielist;
    } catch (e) {
      return [];
    }
  }

  Future<List<MoviesModel>> searching() async {
    try {
      var response = await dio.get(
          'https://api.themoviedb.org/3/search/keyword?page=1&api_key=a58058cdf2b779da47dd67884dd07500'); // YOU NEED QUERY FOR SEARCH

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> result = jsondata['results'];

      List<MoviesModel> movielist = [];

      for (var movie in result) {
        MoviesModel movieModel = MoviesModel.fromJson(movie);
        movielist.add(movieModel);
      }

      return movielist;
    } catch (e) {
      return [];
    }
  }
}
