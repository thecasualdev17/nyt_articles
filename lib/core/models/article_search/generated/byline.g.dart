// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../byline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Byline _$BylineFromJson(Map<String, dynamic> json) => Byline(
      json['original'] as String?,
      json['organization'] as String?,
      (json['person'] as List<dynamic>?)
          ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BylineToJson(Byline instance) => <String, dynamic>{
      'original': instance.original,
      'organization': instance.organization,
      'person': instance.person,
    };
