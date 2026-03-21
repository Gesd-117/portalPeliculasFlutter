import 'package:flutter/material.dart';
import 'package:portal_peliculas/screens/generos_screen.dart';
import 'package:portal_peliculas/screens/home.dart';
import 'package:portal_peliculas/screens/peliculas_cine_screen.dart';
import 'package:portal_peliculas/screens/peliculas_tv_screen.dart';

void main() => runApp(const PortalPeliculas());

class PortalPeliculas extends StatelessWidget {
  const PortalPeliculas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "cine": (context) => PeliculasCine(),
        "tv": (context) => PeliculasTv(),
        "generos": (context) => Genero(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)),
      home: Home(),
    );
  }
}

