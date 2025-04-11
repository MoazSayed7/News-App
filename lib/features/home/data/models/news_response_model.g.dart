// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) => NewsArticle(
  title: json['title'] as String,
  author: json['author'] as String,
  imgUrl: json['imgUrl'] as String,
  desc: json['desc'] as String,
  newsDate: DateTime.parse(json['newsDate'] as String),
  id: (json['id'] as num).toInt(),
  createdAt: DateTime.parse(json['creatAt'] as String),
);

Map<String, dynamic> _$NewsArticleToJson(NewsArticle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'imgUrl': instance.imgUrl,
      'desc': instance.desc,
      'newsDate': instance.newsDate.toIso8601String(),
      'id': instance.id,
      'creatAt': instance.createdAt.toIso8601String(),
    };

NewsResponseModel _$NewsResponseModelFromJson(Map<String, dynamic> json) =>
    NewsResponseModel(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
              .toList(),
      messages:
          (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
      succeeded: json['succeeded'] as bool,
    );

Map<String, dynamic> _$NewsResponseModelToJson(NewsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'messages': instance.messages,
      'succeeded': instance.succeeded,
    };
