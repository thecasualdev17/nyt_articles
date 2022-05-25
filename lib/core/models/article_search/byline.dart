import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nyt_articles/core/models/article_search/person.dart';

part 'generated/byline.g.dart';

@JsonSerializable()
class Byline extends Equatable{

  final String? original, organization;
  final List<Person>? person;

  const Byline(this.original, this.organization, this.person);
  @override
  List<Object?> get props => [
    original, organization, person
  ];

  factory Byline.fromJson(Map<String, dynamic> json) => _$BylineFromJson(json);
  Map<String, dynamic> toJson() => _$BylineToJson(this);
}