import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../models/comments_model.dart';

Future getComments() async{
  final String apiUrl = 'https://jsonplaceholder.typicode.com/comments';
  http.Response response = await http.get(apiUrl);
  final jsonRespose = json.decode(response.body);
  Comments comments = Comments.fromJson(jsonRespose);

  return comments.commentsList;
}