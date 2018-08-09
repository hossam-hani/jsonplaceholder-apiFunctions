import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/albums_model.dart';

Future getAlbums() async {
  String apiUrl = 'https://jsonplaceholder.typicode.com/albums';
  http.Response response = await http.get(apiUrl);
  final jsonResponse = json.decode(response.body);
  Albums albums = Albums.fromJson(jsonResponse);

  return albums.albumsList;
}