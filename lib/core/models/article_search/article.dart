import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nyt_articles/core/models/article_search/byline.dart';
import 'package:nyt_articles/core/models/article_search/headline.dart';
import 'package:nyt_articles/core/models/article_search/keyword.dart';
import 'package:nyt_articles/core/models/article_search/multimedia.dart';

part 'generated/article.g.dart';

@JsonSerializable()
class Article extends Equatable{

  final String? snippet, source, uri;

  @JsonKey(name: 'web_url')
  final String? webUrl;
  @JsonKey(name: 'print_section')
  final String? printSection;
  @JsonKey(name: 'pub_date')
  final String? pubDate;
  @JsonKey(name: 'document_type')
  final String? documentType;
  @JsonKey(name: 'news_desk')
  final String? newsDesk;
  @JsonKey(name: 'section_name')
  final String? sectionName;
  @JsonKey(name: 'type_of_material')
  final String? typeOfMaterial;
  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'word_count')
  final int? wordCount;

  final Headline headline;
  final Byline byline;
  final List<Multimedia> multimedia;
  final List<Keyword> keywords;

  const Article(this.snippet, this.source, this.uri, this.webUrl, this.printSection,
      this.pubDate, this.documentType, this.newsDesk, this.sectionName,
      this.typeOfMaterial, this.id, this.wordCount, this.headline,
      this.byline, this.multimedia, this.keywords);

  @override
  List<Object?> get props => [
    snippet, source, uri, webUrl, printSection, pubDate, documentType, newsDesk, sectionName,
    typeOfMaterial, id, wordCount, headline, byline, multimedia, keywords
  ];

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}