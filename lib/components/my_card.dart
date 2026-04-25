import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.popularity,
    required this.voteAverage,
    required this.voteCount,
    required this.overview,
  });

  final String id;
  final String title;
  final String posterPath;
  final String releaseDate;
  final String popularity;
  final String voteAverage;
  final String voteCount;
  final String overview;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //imagen
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            height: 200.0,
            child: Image.network(
              "https://image.tmdb.org/t/p/w400/${widget.posterPath}",
              fit: BoxFit.none,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                child: Icon(Icons.image, size: 50.0),
              ),
            ),
          ),
          //titulo + descripcion
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.overview,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //pie de pagina
          // ignore: avoid_unnecessary_containers
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pie de card",
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("ver mas..."),
                  icon: Icon(Icons.view_carousel),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
