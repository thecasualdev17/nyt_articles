// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../headline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Headline _$HeadlineFromJson(Map<String, dynamic> json) => Headline(
      json['main'] as String?,
      json['kicker'] as String?,
      json['name'] as String?,
      json['seo'] as String?,
      json['sub'] as String?,
      json['content_kicker'] as String?,
      json['print_headline'] as String?,
    );

Map<String, dynamic> _$HeadlineToJson(Headline instance) => <String, dynamic>{
      'main': instance.main,
      'kicker': instance.kicker,
      'name': instance.name,
      'seo': instance.seo,
      'sub': instance.sub,
      'content_kicker': instance.contentKicker,
      'print_headline': instance.printHeadline,
    };
