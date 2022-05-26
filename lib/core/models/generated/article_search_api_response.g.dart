// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../article_search_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleSearchApiResponse _$ArticleSearchApiResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleSearchApiResponse(
      json['status'] as String,
      json['copyright'] as String,
      ArticleResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleSearchApiResponseToJson(
        ArticleSearchApiResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'response': instance.articleResponse,
    };

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) =>
    ArticleResponse(
      (json['docs'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleResponseToJson(ArticleResponse instance) =>
    <String, dynamic>{
      'docs': instance.articles,
    };
