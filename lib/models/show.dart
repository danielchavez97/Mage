import 'dart:async';

import 'package:magg/services/api.dart';
import 'package:magg/services/repository.dart';

class Show{
  int id;
  String name;
  String imagePath;
  String description;
  String createdDate;

  Show({this.name, this.imagePath, this.description});

  Show.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imagePath = json['image_uri'];
    description = json['description'];
    createdDate = json['created_date'];
  }
}

class ShowResponse {
  int totalResults;
  List<Show> results;

  ShowResponse.fromJson(Map<String, dynamic> json) {
    totalResults = json['total_results'];
    if (json['results'] != null) {
      results = new List<Show>();
      json['results'].forEach((v) {
        results.add(new Show.fromJson(v));
      });
    }
  }
}

class ShowData {
  ShowRepository _showRepository;

  StreamController _showListController;

  StreamSink<ApiResponse<List<Show>>> get showListSink =>
      _showListController.sink;

  Stream<ApiResponse<List<Show>>> get showListStream =>
      _showListController.stream;

  ShowData() {
    _showListController = StreamController<ApiResponse<List<Show>>>();
    _showRepository = ShowRepository();
    fetchShowList();
  }

  fetchShowList() async {
    showListSink.add(ApiResponse.loading('Fetching Shows'));
    try {
      List<Show> shows = await _showRepository.fetchShowList();
      showListSink.add(ApiResponse.completed(shows));
    } catch (e) {
      showListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _showListController?.close();
  }
}
