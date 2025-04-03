import 'package:json_annotation/json_annotation.dart';

part 'banner_response_model.g.dart';

@JsonSerializable()
class BannerResponseModel {
  final List<DataItem> data;
  final List<String> messages;
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
class DataItem {
  final String imageUrl;
  final String name;
  final int id;
  @JsonKey(name: 'creatAt')
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
