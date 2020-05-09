import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('mage', style: GoogleFonts.getFont('Oxygen')),
        ),
        body:
        Container(
          height: 571,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: PageViewDemo(),
        ),),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://i1.sndcdn.com/avatars-000306077932-3ehugq-t500x500.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const ListTile(
              title: Text('Dekmantel'),
              subtitle:
                  Text('Dutch based label with a reputation for quality.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Catalogue'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('Profile'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://i1.sndcdn.com/artworks-000288966629-g3jj34-t500x500.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const ListTile(
            title: Text('NTS'),
            subtitle:
            Text('Online radio station and media platform based in London'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Mixes'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('Profile'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyPage3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://i1.sndcdn.com/avatars-000219545681-3qqz2i-t500x500.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const ListTile(
            title: Text('Honey Soundsystem'),
            subtitle:
            Text('San Francisco\'s Honey Soundsystem.'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Mixes'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('Profile'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}


