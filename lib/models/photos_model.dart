class Photo{
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});


  factory Photo.fromJson(Map<String, dynamic> json){
    return Photo(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']
    );
  }

}



class PhotosList{
  final List<Photo> photosList;

  PhotosList({this.photosList});

  factory PhotosList.fromJson(List json){
    List<Photo> photosList;
    photosList = json.map((photoJson) => Photo.fromJson(photoJson)).toList();

    return PhotosList(
      photosList: photosList
    );

  }


}