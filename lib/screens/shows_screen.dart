import 'package:flutter/material.dart';
import 'package:magg/coin_data.dart';
import 'package:magg/main_alt.dart';


class ShowsScreen extends StatefulWidget{
  ShowsScreen({this.userShows});

  final userShows;


  @override
  _ShowsPageState createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsScreen> {
  Map test;
  List<Widget> cardData = List<Widget>();
  // Global variables go here
  @override
  void initState() {
    super.initState();
    updateUI(widget.userShows);
  }


  void updateUI(dynamic showsData) {
    setState((){
      if (showsData == null){
        return;
      }
      test = showsData;
      for (Map Show in test['results']) {
        cardData.add(ShowCard(Show: Show));
      }
      });
  }

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Magg')
      ),
      body: PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: cardData
      ),
    );
  }
}

class ShowCard extends StatelessWidget {
  const ShowCard({
    Key key,
    @required this.Show,
  }) : super(key: key);

  final Map Show;

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
            Show['thumbnail'],
            fit: BoxFit.fill,
          ),
        ),
        ListTile(
          title: Text(Show['name']),
          subtitle:
          Text(Show["description"]),
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('Catalogue'),
              onPressed: () {/* ... */},
            ),
            FlatButton(
              child: Text('Profile'),
              onPressed: () {/* ... */},
            ),
          ],
        ),
      ],
    ),
      );
  }
}

