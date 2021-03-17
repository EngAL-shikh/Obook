import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Book.dart';
class Books with ChangeNotifier{
  List<Book> _items=[];

  List<Book> get items
  {
    return [..._items];
  }

  void addProduct(){
   // _items.add(value);
    notifyListeners();
  }
}