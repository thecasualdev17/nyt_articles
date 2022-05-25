// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../most_popular.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostPopular _$MostPopularFromJson(Map<String, dynamic> json) => MostPopular(
      json['url'] as String?,
      json['section'] as String?,
      json['byline'] as String?,
      json['type'] as String?,
      json['title'] as String?,
      json['abstract'] as String?,
      json['source'] as String?,
      json['uri'] as String?,
      json['subsection'] as String?,
      json['nytDSection'] as String?,
      json['updated'] as String?,
      json['adx_keywords'] as String?,
      json['published_date'] as String?,
      json['id'] as int?,
      json['asset_id'] as int?,
      (json['des_facet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['org_facet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['per_facet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['geo_facet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MostPopularToJson(MostPopular instance) =>
    <String, dynamic>{
      'url': instance.url,
      'section': instance.section,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'abstract': instance.abstract,
      'source': instance.source,
      'uri': instance.uri,
      'subsection': instance.subsection,
      'nytDSection': instance.nytDSection,
      'updated': instance.updated,
      'adx_keywords': instance.adxKeywords,
      'published_date': instance.publishedDate,
      'id': instance.id,
      'asset_id': instance.assetId,
      'des_facet': instance.desFacet,
      'org_facet': instance.orgFacet,
      'per_facet': instance.perFacet,
      'geo_facet': instance.geoFacet,
      'media': instance.media,
    };
