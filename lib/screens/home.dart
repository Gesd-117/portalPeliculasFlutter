import 'package:flutter/material.dart';
import 'package:portal_peliculas/screens/peliculas_cine_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return PeliculasCine(title: widget.title,
    );
  }
}
