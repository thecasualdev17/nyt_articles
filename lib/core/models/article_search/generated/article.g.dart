// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      json['snippet'] as String?,
      json['source'] as String?,
      json['uri'] as String?,
      json['web_url'] as String?,
      json['print_section'] as String?,
      json['pub_date'] as String?,
      json['document_type'] as String?,
      json['news_desk'] as String?,
      json['section_name'] as String?,
      json['type_of_material'] as String?,
      json['_id'] as String?,
      json['print_page'] as int?,
      json['word_count'] as int?,
      Headline.fromJson(json['headline'] as Map<String, dynamic>),
      Byline.fromJson(json['byline'] as Map<String, dynamic>),
      (json['multimedia'] as List<dynamic>)
          .map((e) => Multimedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['keywords'] as List<dynamic>)
          .map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'snippet': instance.snippet,
      'source': instance.source,
      'uri': instance.uri,
      'web_url': instance.webUrl,
      'print_section': instance.printSection,
      'pub_date': instance.pubDate,
      'document_type': instance.documentType,
      'news_desk': instance.newsDesk,
      'section_name': instance.sectionName,
      'type_of_material': instance.typeOfMaterial,
      '_id': instance.id,
      'print_page': instance.printPage,
      'word_count': instance.wordCount,
      'headline': instance.headline,
      'byline': instance.byline,
      'multimedia': instance.multimedia,
      'keywords': instance.keywords,
    };
