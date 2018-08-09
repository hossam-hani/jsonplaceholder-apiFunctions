import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/photos_model.dart';


Future getPhotos() async {
  String apiUrl = "https://jsonplaceholder.typicode.com/photos";
  http.Response response = await http.get(apiUrl);
  final jsonResponse = json.decode(response.body);
  PhotosList photoList = PhotosList.fromJson(jsonResponse);
  return photoList.photosList;
}