import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/main_scanffold.dart';
import 'package:portal_peliculas/components/my_card.dart';
import 'package:portal_peliculas/models/peliculas_cine_model.dart';
import 'package:portal_peliculas/providers/get_movie_cine.dart';

class PeliculasCine extends StatefulWidget {
  const PeliculasCine({super.key, required this.title});

  final String title;
  @override
  State<PeliculasCine> createState() => _PeliculasCineState();
}

class _PeliculasCineState extends State<PeliculasCine> {
  late final Future<List<PeliculasCineModel>> listaPeliculaCine;
  @override
  void initState() {
    super.initState();

    listaPeliculaCine = obtenerPeliculasCine();
  }

  @override
  Widget build(BuildContext context) {
    return MainScanffold(
      title: widget.title,
      body: FutureBuilder(
        future: listaPeliculaCine,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(children: verPeliculas(snapshot.data!));
          } else if (snapshot.hasError) {
            return Center(child: Text("No hay peliculas"));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      initialIndex: 0,
    );
  }

  List<Widget> verPeliculas(List<PeliculasCineModel> data) {
    List<Widget> peliculasDeCine = [];
    for (var item in data) {
      peliculasDeCine.add(
        MyCard(
          id: item.id,
          title: item.title,
          posterPath: item.posterPath,
          releaseDate: item.releaseDate,
          popularity: item.popularity,
          voteAverage: item.voteAverage,
          voteCount: item.voteCount,
          overview:  item.overview,
        ),
      );
    }
    return peliculasDeCine;
  }
}
