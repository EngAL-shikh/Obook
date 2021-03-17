import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Book.dart';
import '../widgets/book_item.dart';

class bookoverviewscreen extends StatelessWidget {
  // This widget is the root of your application.
  final List<Book> listofBook = [
    Book(
        id: '1',
        title: 'ارض زيكولاا',
        det: 'test',
        imageUrl:
            'https://s3.amazonaws.com/jarir-files/images/original/6114.jpg'),
    Book(
        id: '1',
        title: 'ارض زيكولاا',
        det: 'test',
        imageUrl:
            'https://s3.amazonaws.com/jarir-files/images/original/6114.jpg'),
    Book(
        id: '1',
        title: 'ارض زيكولاا',
        det: 'test',
        imageUrl:
            'https://s3.amazonaws.com/jarir-files/images/original/6114.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roaiat'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: listofBook.length,
        itemBuilder: (ctx, i) => BookItem(
            listofBook[i].id, listofBook[i].title, listofBook[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
      ),
    );
  }
}
