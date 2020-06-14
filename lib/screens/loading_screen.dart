import 'package:flutter/material.dart';
import 'shows_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:magg/services/shows.dart';

class LoadingScreen extends StatefulWidget{
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    //Before calling this function try and implements session remembering
    // and pass through the context of the user trying to access the app
    getShowData();
  }

  void getShowData() async{
    var showData = await ShowModel().getUserShows(0);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ShowsScreen(
        userShows: showData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }

}