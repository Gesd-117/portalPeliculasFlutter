import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key, required this.selectedIndex, required this.onDestinationSelected});

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: widget.onDestinationSelected,
      // ignore: sized_box_for_whitespace
      header: Container(
        width: double.infinity,
        child: DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.inversePrimary,
                Theme.of(context).colorScheme.surface,
              ],
            ),
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Theme.of(context).colorScheme.onSecondary,
                child: Icon(Icons.movie, size: 40.0, color: Colors.black,),
              ),
              SizedBox(height: 10.0,),
              Text(
                "Peliculas app",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Bienvenido",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      children: [
        NavigationDrawerDestination(
          icon: Icon(Icons.theaters_sharp),
          label: Text("Peliculas de cine"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.tv),
          label: Text("Peliculas de TV"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.category),
          label: Text("Generos de peliculas"),
        ),
        Divider(),
        NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("Configuración"),
        ),
      ],
    );
  }
}
