import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/photos_model.dart';

Future getPosts() async{
  final String apiUrl = "https://jsonplaceholder.typicode.com/posts";
  http.Response response = await http.get(apiUrl);
  final jsonResponse = json.decode(response.body);
  PhotosList photosList = PhotosList.fromJson(jsonResponse);
  
  return photosList.photosList;
}