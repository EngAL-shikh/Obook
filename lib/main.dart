import 'package:fashion/maindrawer.dart';
import 'package:fashion/models/Book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'maindrawer.dart';
import 'screens/book_overview_screen.dart';
import 'screens/book_details_screen.dart';
import 'providers/books.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (ctx)=> Books(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.black26
        ),
        home: bookoverviewscreen(),
        routes: {
          Book_details_screen.routeName:(ctx)=>Book_details_screen(),
        },

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),

      ),
      drawer: Drawer(
        child:mainDrawer() ,
      ),
    );
  }
}
