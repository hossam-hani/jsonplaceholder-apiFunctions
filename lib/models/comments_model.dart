class Comment{
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Comment({this.postId, this.id, this.name, this.email, this.body});

  factory Comment.fromJson(Map<String, dynamic> json){
    return Comment(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      email: json['email'],
      body: json['body']
    );
  }
}

class Comments{
  List<Comment> commentsList;

  Comments({this.commentsList});
  
  factory Comments.fromJson(List json){
     List<Comment> commentsList;
     commentsList = json.map((commentJson) => Comment.fromJson(commentJson)).toList();

      return Comments(
        commentsList: commentsList
      );
  }

}