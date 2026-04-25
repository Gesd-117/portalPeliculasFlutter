import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/main_scanffold.dart';

class PeliculasTv extends StatefulWidget {
  const PeliculasTv({super.key, required this.title});

  final String title;
  @override
  State<PeliculasTv> createState() => _PeliculasTvState();
}

class _PeliculasTvState extends State<PeliculasTv> {
  @override
  Widget build(BuildContext context) {
    return MainScanffold(
      title: widget.title,
      body: Center(child: Text("Lista de peliculas de tv"),),
      initialIndex: 1,
    );
  }
}
