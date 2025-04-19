import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner_response_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class BannerResponseModel extends HiveObject {
  @HiveField(0)
  final List<DataItem> data;

  @HiveField(1)
  final List<String> messages;

  @HiveField(2)
  final bool succeeded;

  BannerResponseModel({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory BannerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerResponseModelToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 1)
class DataItem extends HiveObject {
  @HiveField(0)
  final String imageUrl;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int id;

  @JsonKey(name: 'creatAt')
  @HiveField(3)
  final DateTime createdAt;

  DataItem({
    required this.imageUrl,
    required this.name,
    required this.id,
    required this.createdAt,
  });

  factory DataItem.fromJson(Map<String, dynamic> json) =>
      _$DataItemFromJson(json);

  Map<String, dynamic> toJson() => _$DataItemToJson(this);
}
