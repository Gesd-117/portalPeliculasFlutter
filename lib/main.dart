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
    const String titleApp = "Portal de peliculas";
    return MaterialApp(
      //initialRoute: "/",
      routes: {
        "cine/": (_) => PeliculasCine(title: titleApp,),
        "tv/": (_) => PeliculasTv(title: titleApp,),
        "generos/": (_) => Genero(title: titleApp,),
      },
      debugShowCheckedModeBanner: false,
      title: titleApp,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      home: Home(title: titleApp,),
    );
  }
}

