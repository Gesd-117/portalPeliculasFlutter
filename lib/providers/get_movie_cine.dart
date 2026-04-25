import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:portal_peliculas/models/peliculas_cine_model.dart';
import 'package:http/http.dart' as http;

Future<List<PeliculasCineModel>> obtenerPeliculasCine() async {
  try {
    final response = await http.get(
      Uri.parse(
        "https://api.themoviedb.org/3/movie/popular?api_key=ecbcdcf9044928d12b179d9153f5a269&language=es-VE&with_genres=28&page=1",
      ),
    );

    final List<PeliculasCineModel> listaPeliculas = [];

    if (response.statusCode == 200) {
      debugPrint(response.body);
      final jsonData = jsonDecode(response.body);

      for (var item in jsonData["results"]) {
        listaPeliculas.add(
          PeliculasCineModel(
            id: item["id"].toString(),
            title: item["title"],
            posterPath: item["poster_path"],
            releaseDate: item["release_date"],
            popularity: item["popularity"].toString(),
            voteAverage: item["vote_average"].toString(),
            voteCount: item["vote_count"].toString(),
            overview: item["overview"],
          ),
        );
      }

      return listaPeliculas;
    } else {
      return Future.error("Fallo de conexión");
    }
  } catch (e) {
    return Future.error("Fallo de conexión");
  }
}
