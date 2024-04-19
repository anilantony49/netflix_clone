
import 'package:netflix/core/strings.dart';

class Series {
  int id;
  String title;
  String overView;
  String releaseDate;
  String posterPath;
  String backdropPath;
  List genre;
  Series({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overView,
    required this.backdropPath,
    required this.releaseDate,
    required this.genre,
  });

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
      id: json['id'],
      title: json['original_name'],
      posterPath: json['poster_path'],
      overView: json['overview'],
      backdropPath: json['backdrop_path'] ?? mainImage,
      releaseDate: json['first_air_date'],
      genre: json['genre_ids']
    );
  }
}

class SeriesList {
  List<Series> seriesList;
  SeriesList({required this.seriesList});

  factory SeriesList.fromJson(List<dynamic> json) {
    List<Series> topRated = [];
    topRated = json.map((toprated) => Series.fromJson(toprated)).toList();
    return SeriesList(seriesList: topRated);
  }
}
