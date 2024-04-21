import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/domian/core/api_end_points.dart';
import 'package:netflix/domian/model/movies.dart';
import 'package:netflix/domian/model/series.dart';

String moviesList = ApiEndPoints.pastYearMovies;

Future<List<Movie>> getAllMoviesList(String value) async {
  final response = await http.get(Uri.parse(moviesList));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(bodyAsJson['results']);
    return value == ''
        ? data.movieList
        : data.movieList
            .where((element) =>
                element.title.toLowerCase().contains(value.toLowerCase()))
            .toList();
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String allSeries = ApiEndPoints.popularSeries;

Future<List<Series>> getAllSeriesList(String value) async {
  final response = await http.get(Uri.parse(allSeries));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = SeriesList.fromJson(bodyAsJson['results']);
    return value == ''
        ? data.seriesList
        : data.seriesList
            .where((element) =>
                element.title.toLowerCase().contains(value.toLowerCase()))
            .toList();
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String upComingMovies = ApiEndPoints.upComingMovies;

Future<List<Movie>> getAllUpcomingMovies() async {
  final response = await http.get(Uri.parse(upComingMovies));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(bodyAsJson['results']);
    return data.movieList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String popularSeries = ApiEndPoints.popularSeries;

Future<List<Series>> getAllPopularSeries() async {
  final response = await http.get(Uri.parse(popularSeries));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = SeriesList.fromJson(bodyAsJson['results']);
    return data.seriesList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String popularMovie = ApiEndPoints.popularMovies;

Future<List<Movie>> getAllPopular() async {
  final response = await http.get(Uri.parse(popularMovie));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(bodyAsJson['results']);
    return data.movieList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String trendingMovie = ApiEndPoints.trendingMovies;

Future<List<Movie>> getAllTrending() async {
  final response = await http.get(Uri.parse(trendingMovie));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(bodyAsJson['results']);
    return data.movieList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String topRatedSeries = ApiEndPoints.topRatedSeries;

Future<List<Series>> getAllTopRatedSeries() async {
  final response = await http.get(Uri.parse(topRatedSeries));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = SeriesList.fromJson(bodyAsJson['results']);
    return data.seriesList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String pastYearMovies = ApiEndPoints.pastYearMovies;

Future<List<Movie>> getAllPastYearMovies() async {
  final response = await http.get(Uri.parse(pastYearMovies));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(bodyAsJson['results']);
    return data.movieList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}

String airingTodaySeries = ApiEndPoints.airingTodaySeries;

Future<List<Series>> getAllSeriesAiringToday() async {
  final response = await http.get(Uri.parse(airingTodaySeries));
  if (response.statusCode == 200) {
    final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = SeriesList.fromJson(bodyAsJson['results']);
    return data.seriesList;
  } else {
    throw Exception('Server Failure Please Try Again!!!');
  }
}
