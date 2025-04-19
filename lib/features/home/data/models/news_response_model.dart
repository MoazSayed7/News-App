import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_response_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class NewsArticle extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String author;

  @HiveField(2)
  final String imgUrl;

  @HiveField(3)
  final String desc;

  @HiveField(4)
  final DateTime newsDate;

  @HiveField(5)
  final int id;

  @JsonKey(name: 'creatAt')
  @HiveField(6)
  final DateTime createdAt;

  NewsArticle({
    required this.title,
    required this.author,
    required this.imgUrl,
    required this.desc,
    required this.newsDate,
    required this.id,
    required this.createdAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);

  Map<String, dynamic> toJson() => _$NewsArticleToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 3)
class NewsResponseModel extends HiveObject {
  @HiveField(0)
  final List<NewsArticle> data;

  @HiveField(1)
  final List<String> messages;

  @HiveField(2)
  final bool succeeded;

  NewsResponseModel({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory NewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);
}
