import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:magg/components/show_card.dart';
import 'package:magg/models/show.dart';
import 'package:magg/services/api.dart';

class ShowsScreen extends StatefulWidget {

  @override
  _ShowsPageState createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsScreen> {
  ShowData _show_data;
  List<Widget> _card_data;

  @override
  void initState() {
    super.initState();
    _card_data = [];
    _show_data = ShowData();
  }


  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    _show_data.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () {_card_data = [];
        return _show_data.fetchShowList();},
        child: StreamBuilder(
            stream: _show_data.showListStream,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                switch (snapshot.data.status) {
                  case Status.LOADING:
                    return Center(
                      child: SpinKitDoubleBounce(
                        color: Colors.white,
                        size: 100.0,
                      ),
                    );
                    break;
                  case Status.COMPLETED:
                    for (Show _ in snapshot.data.data) {
                      _card_data.add(ShowCard(show: _));
                    }
                    return ListView(children: _card_data);
                    break;
                  case Status.ERROR:
                    return snapshot.data.data;
                    break;
                }
                return PageView(children: [Card()]);
              }
              return Container();
            })
    );
  }
}



