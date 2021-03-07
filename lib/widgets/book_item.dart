import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  BookItem(this.id, this.title, this.imageUrl);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.view_day),
        ),
      ),
    );
  }
}
