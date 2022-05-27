import 'package:json_annotation/json_annotation.dart';
import 'article_search/article.dart';

part 'generated/article_search_api_response.g.dart';

@JsonSerializable()
class ArticleSearchApiResponse{
  final String status;
  final String copyright;
  @JsonKey(name: 'response')
  final ArticleResponse articleResponse;
  const ArticleSearchApiResponse(this.status, this.copyright, this.articleResponse);

  factory ArticleSearchApiResponse.fromJson(Map<String, dynamic> json) => _$ArticleSearchApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleSearchApiResponseToJson(this);
}

@JsonSerializable()
class ArticleResponse{
  @JsonKey(name: 'docs')
  final List<Article> articles;

  const ArticleResponse(this.articles);

  factory ArticleResponse.fromJson(Map<String, dynamic> json) => _$ArticleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleResponseToJson(this);
}