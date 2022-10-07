import 'package:hive/hive.dart';

part 'movieModel.g.dart';

@HiveType(typeId: 0)
class MovieModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? movieName;

  @HiveField(2)
  String? movieDescription;

  @HiveField(3)
  String? moviePoster;

  @HiveField(4)
  String? movieLanguage;

  MovieModel(
      {this.id,
        this.movieName,
        this.movieDescription,
        this.moviePoster,
        this.movieLanguage});

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    movieName = json['movieName'];
    movieDescription = json['movieDescription'];
    moviePoster = json['moviePoster'];
    movieLanguage = json['movieLanguage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['movieName'] = movieName;
    data['movieDescription'] = movieDescription;
    data['moviePoster'] = moviePoster;
    data['movieLanguage'] = movieLanguage;
    return data;
  }
}
