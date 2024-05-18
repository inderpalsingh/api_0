import 'package:api_0/models/tags_model.dart';

class PostsModel{
  
  num? id;
  String? title;
  String? body;
  num? userId;
  num? reactions;
  List<TagsModel>? tags;
  
  PostsModel({required this.id, required this.title, required this.body, required this.userId,required this.reactions, required this.tags});
  
  /// map to model
  factory PostsModel.fromJson(Map<String, dynamic> json){
    
    List<TagsModel>? newTags = [];
    
    for(Map<String, dynamic> eachTags in json['tags']){
      TagsModel tagsModel = TagsModel.fromJson(eachTags);
      newTags.add(tagsModel);
    }
    
    return PostsModel(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        userId: json['userId'],
        reactions: json['reactions'],
        tags: newTags
    );
    
  }
  
  
}