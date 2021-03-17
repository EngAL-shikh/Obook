import 'package:flutter/material.dart';
import '../screens/book_details_screen.dart';

class BookItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  BookItem(this.id, this.title, this.imageUrl);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              Book_details_screen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).accentColor,
            ),
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.view_day, color: Theme.of(context).accentColor),
          ),
        ),
      ),
    );
  }
}
