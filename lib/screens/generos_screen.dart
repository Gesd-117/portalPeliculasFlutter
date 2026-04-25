import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/main_scanffold.dart';
import 'package:portal_peliculas/delegates/search_generos.dart';
import 'package:portal_peliculas/models/generos_model.dart';
import 'package:portal_peliculas/providers/get_generos.dart';

class Genero extends StatefulWidget {
  const Genero({super.key, required this.title});

  final String title;
  @override
  State<Genero> createState() => _GeneroState();
}

class _GeneroState extends State<Genero> {
  
  late final Future<List<GeneroModel>> listaGenero;
  @override
  void initState() {
    super.initState();

    listaGenero = obtenerGeneros();
  }

  @override
  Widget build(BuildContext context) {
    return MainScanffold(
      title: widget.title,
      body: FutureBuilder(
        future: listaGenero,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(children: verGeneros(snapshot.data!));
          } else if (snapshot.hasError) {
            Center(child: Text("No hay generos"));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      initialIndex: 2,
    );
  }

  List<Widget> verGeneros(List<GeneroModel> data) {
    
    List<Widget> listaGenero = [];

    listaGenero.add(
      Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            title: Text(
              "Listado de generos",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(onPressed: () {
              showSearch(context: context, delegate: SearchGeneros(listaGenero: data));
            }, icon: Icon(Icons.search)),
          ),
        ),
      ),
    );
    for (var item in data) {
      listaGenero.add(
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Text(item.name.substring(0, 2))),
            title: Text(item.name),
            subtitle: Text('Codigo: ${item.id}'),
          ),
        ),
      );
    }
    return listaGenero;
  }
}
