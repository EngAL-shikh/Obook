import 'package:flutter/foundation.dart';

class Book {
  final String id;
  final String title;
  final String det;
  final String imageUrl;
  final bool isfavorite;

  Book({
    @required this.id,
    @required this.title,
    @required this.det,
    @required this.imageUrl,
    this.isfavorite=false
  }
  );
}
