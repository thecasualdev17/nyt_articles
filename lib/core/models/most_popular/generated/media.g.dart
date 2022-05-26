// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      json['type'] as String?,
      json['subtype'] as String?,
      json['caption'] as String?,
      json['copyright'] as String?,
      (json['media-metadata'] as List<dynamic>?)
          ?.map((e) => MediaMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'media-metadata': instance.mediaMetadata,
    };
