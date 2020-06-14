import 'package:flutter/material.dart';
import 'package:magg/screens/loading_screen.dart';

void main() => runApp(Magg());

class Magg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(),
      home: LoadingScreen(),
    );
  }
}