import 'package:flutter/material.dart';
import 'package:magg/models/show.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    Key key,
    this.show,
  }) : super(key: key);

  final Show show;

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
              show.imagePath,
              fit: BoxFit.fill,
            ),
          ),
          ListTile(
            title: Text(show.name),
            subtitle:
            Text(show.description),
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
