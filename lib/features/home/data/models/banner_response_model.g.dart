// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResponseModel _$BannerResponseModelFromJson(Map<String, dynamic> json) =>
    BannerResponseModel(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => DataItem.fromJson(e as Map<String, dynamic>))
              .toList(),
      messages:
          (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
      succeeded: json['succeeded'] as bool,
    );

Map<String, dynamic> _$BannerResponseModelToJson(
  BannerResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'messages': instance.messages,
  'succeeded': instance.succeeded,
};

DataItem _$DataItemFromJson(Map<String, dynamic> json) => DataItem(
  imageUrl: json['imageUrl'] as String,
  name: json['name'] as String,
  id: (json['id'] as num).toInt(),
  createdAt: DateTime.parse(json['creatAt'] as String),
);

Map<String, dynamic> _$DataItemToJson(DataItem instance) => <String, dynamic>{
  'imageUrl': instance.imageUrl,
  'name': instance.name,
  'id': instance.id,
  'creatAt': instance.createdAt.toIso8601String(),
};
