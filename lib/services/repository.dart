import 'package:magg/services/api.dart';
import 'package:magg/models/show.dart';

class ShowRepository {
  final String _apiKey = "Paste your api key here";

  ApiBaseHelper _helper = ApiBaseHelper();

  //TODO add a user id to fetch associated with a show list
  Future<List<Show>> fetchShowList() async {
    final response = await _helper.get("shows");
    return ShowResponse.fromJson(response).results;
  }

  //TODO add a method to fetch an individual show
}