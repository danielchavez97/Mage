import 'package:flutter/material.dart';

class ShowsPage extends StatefulWidget{
  @override
  _ShowsPageState createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsPage> {
  // Global variables go here
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Magg')
      ),
      body: PageView()
    );
  }
}