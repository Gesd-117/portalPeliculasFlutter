import 'package:flutter/material.dart';
import 'package:portal_peliculas/screens/generos_screen.dart';
import 'package:portal_peliculas/screens/peliculas_cine_screen.dart';
import 'package:portal_peliculas/screens/peliculas_tv_screen.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Genero()
    );
  }
}