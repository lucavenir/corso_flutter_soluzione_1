// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatApiModel _$CatApiModelFromJson(Map<String, dynamic> json) => CatApiModel(
  id: json['id'] as String,
  url: json['url'] as String,
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
);

Map<String, dynamic> _$CatApiModelToJson(CatApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
