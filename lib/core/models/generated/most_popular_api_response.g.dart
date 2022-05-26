// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../most_popular_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostPopularApiResponse _$MostPopularApiResponseFromJson(
        Map<String, dynamic> json) =>
    MostPopularApiResponse(
      json['status'] as String?,
      json['copyright'] as String?,
      json['num_results'] as int?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => MostPopular.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MostPopularApiResponseToJson(
        MostPopularApiResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'num_results': instance.numResults,
      'results': instance.results,
    };
