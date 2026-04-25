// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portal_peliculas/models/generos_model.dart';

class SearchGeneros extends SearchDelegate {
  late final List<GeneroModel> listaGenero;

  List<GeneroModel> generosFiltro = [];

  SearchGeneros({required this.listaGenero});

  @override
  String? get searchFieldLabel => "Buscar";

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<GeneroModel> generos = [];
    for (var item in listaGenero) {
      if (item.name.contains(query)) {
        generos.add(GeneroModel(id: item.id, name: item.name));
      }
    }
    return ListView.builder(
      itemCount: generos.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(generos[index].name.substring(0, 2)),
            ),
            title: Text(generos[index].name),
            subtitle: Text('Codigo: ${generos[index].id}'),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    generosFiltro = listaGenero.where((valor) {
      return valor.name.contains(query);
    },).toList();
    return ListView.builder(
      itemCount: generosFiltro.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(generosFiltro[index].name.substring(0, 2)),
            ),
            title: Text(generosFiltro[index].name),
            subtitle: Text('Codigo: ${generosFiltro[index].id}'),
          ),
        );
      },
    );
  }
}
