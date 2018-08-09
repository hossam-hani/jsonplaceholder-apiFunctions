class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String,dynamic> json){
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body']
    );
  }
}


class Posts {
  List<Post> postsList;

  Posts({this.postsList});

  factory Posts.fromJson(List json){
    List<Post> postsList;
    postsList = json.map((postJson)=> Post.fromJson(postJson));
    return Posts(
      postsList: postsList
    );
    
  }
}