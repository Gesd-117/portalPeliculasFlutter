// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PeliculasCineModel {
  final String id;
  final String title;
  final String posterPath;
  final String releaseDate;
  final String popularity;
  final String voteAverage;
  final String voteCount;
  final String overview;

  PeliculasCineModel({
    required this.id,
    required this.title,
    required this.posterPath, 
    required this.releaseDate, 
    required this.popularity, 
    required this.voteAverage, 
    required this.voteCount, 
    required this.overview
    });
    

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'popularity': popularity,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'overview': overview,
    };
  }

  factory PeliculasCineModel.fromMap(Map<String, dynamic> map) {
    return PeliculasCineModel(
      id: map['id'] as String,
      title: map['title'] as String,
      posterPath: map['poster_path'] as String,
      releaseDate: map['release_date'] as String,
      popularity: map['popularity'] as String,
      voteAverage: map['vote_average'] as String,
      voteCount: map['vote_count'] as String,
      overview: map['overview'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PeliculasCineModel.fromJson(String source) => PeliculasCineModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
