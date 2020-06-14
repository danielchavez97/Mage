import 'dart:convert';
import 'package:http/http.dart' as http;


class ShowModel {
  Future getUserShows(int userID) async{
    final response =
        await http.get("http://127.0.0.1:5000/Series");
    if (response.statusCode == 200){
      Map data = jsonDecode(response.body) as Map;
      return data;
    }
    else {
     throw Exception('Failed to load shows');
    }
  }
}
