import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/todo_model.dart';


Future getTodos() async {
  String apiUrl = "https://jsonplaceholder.typicode.com/todos";
  http.Response response = await http.get(apiUrl);
  final jsonResponse = json.decode(response.body);
  TodosList todosList  = TodosList.fromJson(jsonResponse);
  return todosList.todosList;
}