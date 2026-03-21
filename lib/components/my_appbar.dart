import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Portal de peliculas"),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
