import 'package:flutter/material.dart';
import 'package:magg/screens/shows_page.dart';

void main() => runApp(Magg());

class Magg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: ShowsPage(),
    );
  }
}