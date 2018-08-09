
import 'package:flutter/material.dart';
// import 'services/user_services.dart';
import 'services/todo_services.dart';
import 'services/photos_services.dart';
import 'services/albums_services.dart';

void main() async{
  runApp(App());
  var todos = await getTodos();
  var photos = await getPhotos();
  // var userslist = await getUsers();
  var albums = await getAlbums();
  print(todos[1].title);
  print(photos[1].url);
  print('title : ${albums[6].title} and id : ${albums[6].id}');
}


class App extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: 'as',
        home: Text('a'),
      );
    }
}