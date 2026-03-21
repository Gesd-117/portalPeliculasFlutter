import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/my_appbar.dart';
import 'package:portal_peliculas/components/my_drawer.dart';

class Genero extends StatefulWidget {
  const Genero({super.key});

  @override
  State<Genero> createState() => _GeneroState();
}

class _GeneroState extends State<Genero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Center(child: Text("generos")),
    );
  }
}
