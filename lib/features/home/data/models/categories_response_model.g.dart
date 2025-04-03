// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseModel _$CategoriesResponseModelFromJson(
  Map<String, dynamic> json,
) => CategoriesResponseModel(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
  messages:
      (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  succeeded: json['succeeded'] as bool,
);

Map<String, dynamic> _$CategoriesResponseModelToJson(
  CategoriesResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'messages': instance.messages,
  'succeeded': instance.succeeded,
};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  name: json['name'] as String,
  id: (json['id'] as num).toInt(),
  createdAt: DateTime.parse(json['creatAt'] as String),
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'creatAt': instance.createdAt.toIso8601String(),
};
