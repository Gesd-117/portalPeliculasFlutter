import 'package:flutter/material.dart';
import 'package:portal_peliculas/components/my_appbar.dart';
import 'package:portal_peliculas/components/my_drawer.dart';

class MainScanffold extends StatefulWidget {
  const MainScanffold({
    super.key,
    required this.title,
    required this.body,
    required this.initialIndex,
  });

  final String title;
  final Widget body;
  final int initialIndex;

  @override
  State<MainScanffold> createState() => _MainScanffoldState();
}

class _MainScanffoldState extends State<MainScanffold> {
  late int selectedIndex = widget.initialIndex;

  void _onDestinationSelection(int index) {
    setState(() {
      selectedIndex = index;
    });

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, 'cine/');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, 'tv/');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, 'generos/');
        break;
      case 3:
        // Navigator.pushReplacementNamed(context, '/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(
        selectedIndex: selectedIndex,
        onDestinationSelected: _onDestinationSelection,
      ),
      body: widget.body,
    );
  }
}
