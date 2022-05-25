import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nyt_articles/core/models/most_popular/media.dart';

@JsonSerializable()
class MostPopular extends Equatable{

  final String? url, section, byline, type, title,
      abstract,source, uri, subsection, nytDSection, updated;

  @JsonKey(name: 'adx_keywords')
  final String? adxKeywords;
  @JsonKey(name: 'published_date')
  final String? publishedDate;

  final int? id;
  @JsonKey(name: 'asset_id')
  final int? assetId;

  @JsonKey(name: 'des_facet')
  final List<String>? desFacet;
  @JsonKey(name: 'org_facet')
  final List<String>? orgFacet;
  @JsonKey(name: 'per_facet')
  final List<String>? perFacet;
  @JsonKey(name: 'geo_facet')
  final List<String>? geoFacet;

  final List<Media>? media;

  const MostPopular(this.url, this.section, this.byline, this.type, this.title,
      this.abstract, this.source, this.uri, this.subsection, this.nytDSection, this.updated,
      this.adxKeywords, this.publishedDate, this.id, this.assetId, this.desFacet,
      this.orgFacet, this.perFacet, this.geoFacet, this.media);

  @override
  List<Object?> get props => [
    url, subsection, section, nytDSection, byline, type,
    title, abstract, source, updated, uri, adxKeywords, publishedDate, id,
    assetId, desFacet, orgFacet, perFacet, geoFacet, media
  ];

}