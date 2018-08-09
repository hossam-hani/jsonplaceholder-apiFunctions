class Album{
  final int userId;
  final int id;
  final String title;


  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String,dynamic> json){
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title']
    );

  }

}


class Albums{
  final List<Album> albumsList;

  Albums({this.albumsList});

  factory Albums.fromJson(List json){
    List<Album> albumsList;
    albumsList = json.map((albumJson) => Album.fromJson(albumJson)).toList();
    return Albums(
      albumsList: albumsList
    );
  }

}