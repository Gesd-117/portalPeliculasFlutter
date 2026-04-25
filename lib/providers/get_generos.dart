import 'dart:convert';

import 'package:portal_peliculas/models/generos_model.dart';
import 'package:http/http.dart' as http;

Future<List<GeneroModel>> obtenerGeneros() async {
  try {
    final response = await http.get(
      Uri.parse(
        'https://api.themoviedb.org/3/genre/movie/list?api_key=ecbcdcf9044928d12b179d9153f5a269&language=es-VE',
      ),
    );

    final List<GeneroModel> generos = [];

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      for (var item in jsonData['genres']) {
        generos.add(GeneroModel(id: item['id'].toString(), name: item['name']));
      }

      return generos;
    } else {
      return Future.error("No se encontraron los generos");
    }
  } catch (e) {
    return Future.error('Fallo de conexion');
  }
}
