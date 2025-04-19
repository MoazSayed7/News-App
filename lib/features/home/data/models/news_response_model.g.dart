// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsArticleAdapter extends TypeAdapter<NewsArticle> {
  @override
  final int typeId = 2;

  @override
  NewsArticle read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsArticle(
      title: fields[0] as String,
      author: fields[1] as String,
      imgUrl: fields[2] as String,
      desc: fields[3] as String,
      newsDate: fields[4] as DateTime,
      id: fields[5] as int,
      createdAt: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, NewsArticle obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.imgUrl)
      ..writeByte(3)
      ..write(obj.desc)
      ..writeByte(4)
      ..write(obj.newsDate)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsArticleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NewsResponseModelAdapter extends TypeAdapter<NewsResponseModel> {
  @override
  final int typeId = 3;

  @override
  NewsResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsResponseModel(
      data: (fields[0] as List).cast<NewsArticle>(),
      messages: (fields[1] as List).cast<String>(),
      succeeded: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, NewsResponseModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.messages)
      ..writeByte(2)
      ..write(obj.succeeded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      data: (json['data'] as List<dynamic>)
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
