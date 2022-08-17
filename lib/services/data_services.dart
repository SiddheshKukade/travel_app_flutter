import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_app_flutter/model/data_model.dart';

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";
  getInfo() async {
    var apiUrl = '/getPlaces';
    //creating a get request
    http.Response response = await http.get(Uri.parse(baseUrl + apiUrl));

    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        return list
            .map((e) => DataModel.fromJson(e))
            .toList(); // converting the JSON from the server to the JSON format that the flutter understands

      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
