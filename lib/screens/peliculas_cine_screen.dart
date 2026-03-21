import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/my_appbar.dart';
import 'package:portal_peliculas/components/my_drawer.dart';

class PeliculasCine extends StatefulWidget {
  const PeliculasCine({super.key});

  @override
  State<PeliculasCine> createState() => _PeliculasCineState();
}

class _PeliculasCineState extends State<PeliculasCine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Center(child: Text("peliculas cine")),
    );
  }
}

