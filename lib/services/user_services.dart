import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
 import '../models/users_model.dart';


Future<List<User>> getUsers() async {
  String urlApi = "https://jsonplaceholder.typicode.com/users";
  http.Response response = await http.get(urlApi);
  final jsonResponse = json.decode(response.body);
  UsersList usersList =  UsersList.fromJson(jsonResponse);

  return usersList.users;
}