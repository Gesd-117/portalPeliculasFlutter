import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/my_appbar.dart';
import 'package:portal_peliculas/components/my_drawer.dart';

class PeliculasTv extends StatefulWidget {
  const PeliculasTv({super.key});

  @override
  State<PeliculasTv> createState() => _PeliculasTvState();
}

class _PeliculasTvState extends State<PeliculasTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Center(child: Text("peliculas tv")),
    );
  }
}


