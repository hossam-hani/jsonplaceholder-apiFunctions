class Todo{
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({this.userId, this.id, this.title, this.completed});

  factory Todo.fromJson(Map<String, dynamic> json){
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed']
    );
  }


}

class TodosList{
  List<Todo> todosList;
  
  TodosList({this.todosList});

  factory TodosList.fromJson(List<dynamic> json){
    List<Todo> todosList;
    todosList = json.map((item) => Todo.fromJson(item)).toList();

    return TodosList(
      todosList: todosList
    );
    
  }
}