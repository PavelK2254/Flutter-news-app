import 'dart:convert';
import 'package:flutter_app/Model/headline.dart';
import 'package:flutter_app/Repository/network.dart';
import 'package:flutter_app/Utils/API.dart';

class HomePageVM {
  var networkManager = new NetworkManager();
  HomePageVM();



  Future<List<Headline>> getHeadlines() {
    return networkManager.loadData(API.BASE_URL + API.HEADLINES_API).then((value) {
      List<dynamic> jsonResponse = jsonDecode(value);
      List<Headline> headlines = new List();
      jsonResponse.forEach((element) {
        headlines.add(Headline.fromJson(element));
      });
      return headlines;
    });
  }
}
