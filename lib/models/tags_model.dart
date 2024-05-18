class TagsModel{
  List<String>? mTags = [];
  
  TagsModel({required this.mTags});
  
  
  /// map to model
  factory TagsModel.fromJson(Map<String, dynamic> json){
    return TagsModel(mTags: json['tags']);
  }
}