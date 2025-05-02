import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class CategoriesResponseModel extends HiveObject {
  @HiveField(0)
  final List<Category> data;

  @HiveField(1)
  final List<String> messages;

  @HiveField(2)
  final bool succeeded;

  CategoriesResponseModel({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseModelToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 5)
class Category extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final int id;

  @JsonKey(name: 'creatAt')
  @HiveField(2)
  final DateTime createdAt;

  Category({required this.name, required this.id, required this.createdAt});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
