class PostsModel{
  
  num? id;
  String? title;
  String? body;
  num? userId;
  num? reactions;
  List<dynamic>? tags;
  
  PostsModel({
    required this.id, required this.title, 
    required this.body, required this.userId,
    required this.reactions, required this.tags
  });
  
  /// map to model
  factory PostsModel.fromJson(Map<String, dynamic> json){

    return PostsModel(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        userId: json['userId'],
        reactions: json['reactions'],
        tags: json['tags'],
    );
    
  }
  
  
}