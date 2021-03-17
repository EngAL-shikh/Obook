import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Book.dart';
import '../widgets/book_item.dart';

class Book_details_screen extends StatelessWidget {
  // This widget is the root of your application.
  // final String title;

  static const routeName='/book-details';

 // Book_details_screen(this.title);

  @override
  Widget build(BuildContext context) {
    final bookId=ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),

    );
  }
}