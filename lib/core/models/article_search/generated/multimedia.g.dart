// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../multimedia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Multimedia _$MultimediaFromJson(Map<String, dynamic> json) => Multimedia(
      json['subtype'] as String?,
      json['caption'] as String?,
      json['credit'] as String?,
      json['type'] as String?,
      json['url'] as String?,
      json['crop_name'] as String?,
      json['rank'] as int?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$MultimediaToJson(Multimedia instance) =>
    <String, dynamic>{
      'subtype': instance.subtype,
      'caption': instance.caption,
      'credit': instance.credit,
      'type': instance.type,
      'url': instance.url,
      'crop_name': instance.cropName,
      'rank': instance.rank,
      'height': instance.height,
      'width': instance.width,
    };
