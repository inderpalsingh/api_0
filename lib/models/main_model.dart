import 'package:api_0/models/posts_model.dart';

class MainModel{
  
  num? total;
  num? skip;
  num? limit;
  List<PostsModel>? posts;
  
  MainModel({required this.total,required this.skip, required this.limit, required this.posts});
  
  factory MainModel.fromJson(Map<String, dynamic> json){
    
    List<PostsModel> mAllPosts =[];
    
    for(Map<String, dynamic> eachPost in json['posts']){
      PostsModel model = PostsModel.fromJson(eachPost);
      mAllPosts.add(model);
    }
    
    return MainModel(
        total: json['total'],
        skip: json['skip'],
        limit: json['limit'],
        posts: mAllPosts
    );
  }
  
}