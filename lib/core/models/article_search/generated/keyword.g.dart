// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../keyword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Keyword _$KeywordFromJson(Map<String, dynamic> json) => Keyword(
      json['name'] as String?,
      json['value'] as String?,
      json['major'] as String?,
      json['rank'] as int?,
    );

Map<String, dynamic> _$KeywordToJson(Keyword instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'major': instance.major,
      'rank': instance.rank,
    };
