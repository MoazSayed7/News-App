// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannerResponseModelAdapter extends TypeAdapter<BannerResponseModel> {
  @override
  final int typeId = 0;

  @override
  BannerResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BannerResponseModel(
      data: (fields[0] as List).cast<DataItem>(),
      messages: (fields[1] as List).cast<String>(),
      succeeded: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BannerResponseModel obj) {
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
      other is BannerResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataItemAdapter extends TypeAdapter<DataItem> {
  @override
  final int typeId = 1;

  @override
  DataItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataItem(
      imageUrl: fields[0] as String,
      name: fields[1] as String,
      id: fields[2] as int,
      createdAt: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DataItem obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.imageUrl)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResponseModel _$BannerResponseModelFromJson(Map<String, dynamic> json) =>
    BannerResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages:
          (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
      succeeded: json['succeeded'] as bool,
    );

Map<String, dynamic> _$BannerResponseModelToJson(
        BannerResponseModel instance) =>
    <String, dynamic>{
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
