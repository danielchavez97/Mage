import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magg/screens/mix_screen.dart';
import 'package:magg/screens/shows_screen.dart';

void main() => runApp(Magg());

class Magg extends StatelessWidget {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme:
          ThemeData(brightness: Brightness.dark, accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magg', style: GoogleFonts.getFont('Oxygen')),
        ),
        body: Column(children: [
          Container(
            height: 670,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ShowsScreen(),
            ),
          ),
          Container(
            color: Colors.black38,
              height: 70,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.network(
                    'https://img.discogs.com/iBAXQzh0x7ayAjOuNTgHRUq9xoM=/fit-in/586x585/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-81995-1173885386.jpeg.jpg',
                  )),
                  Expanded(
                      child: ListTile(
                    title: Text("High Jazz"),
                    subtitle:
                    Text("19th February"),
                  )),
                  Spacer(),
                  FlatButton(
                    child: Icon(Icons.play_arrow, size: 35),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                ],
              ))
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favorites',
            ),
          ],
        ),
      ),
    );
  }
}
