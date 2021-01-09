import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magg/screens/show.dart';

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
        body: Container(
          height: 630,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: PageViewDemo(),
          ),
        ),
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
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: AspectRatio(aspectRatio: 1.0/1.0,child: Image.network(
              'https://static.wixstatic.com/media/869ff8_4dcf426e192b41d7815db8879769ea2b~mv2.png/v1/fill/w_560,h_390,al_c,lg_1,q_85/869ff8_4dcf426e192b41d7815db8879769ea2b~mv2.webp',
            ),
          ),),
          ListTile(
            isThreeLine: true,
            title: Text('Hora Latina'),
            subtitle: Text('A series showcasing latin music from around the world.',
                maxLines: 2, overflow: TextOverflow.ellipsis),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Catalogue'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowScreen()),
                  );
                },
              ),
              FlatButton(
                child: const Text('Profile'),
                onPressed: () {
                  /* ... */
                },
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
                onPressed: () {
                  /* ... */
                },
              ),
              FlatButton(
                child: const Text('Profile'),
                onPressed: () {
                  /* ... */
                },
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
            subtitle: Text('San Francisco\'s Honey Soundsystem.'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Mixes'),
                onPressed: () {
                  /* ... */
                },
              ),
              FlatButton(
                child: const Text('Profile'),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
