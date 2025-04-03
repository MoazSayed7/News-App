import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponseModel {
  final List<Category> data;
  final List<String> messages;
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
class Category {
  final String name;
  final int id;
  @JsonKey(name: 'creatAt')
  final DateTime createdAt;

  Category({required this.name, required this.id, required this.createdAt});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
