import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/constants/enums.dart';
import 'package:nyt_articles/core/models/article_search/article.dart';
import 'package:nyt_articles/core/models/article_search_api_response.dart';
import 'package:nyt_articles/core/models/most_popular/most_popular.dart';
import 'package:nyt_articles/core/models/most_popular_api_response.dart';
import 'package:nyt_articles/utils/registry.dart';

import '../../utils/services/api_service.dart';
import 'general_providers.dart';

final ApiService _apiService = registry<ApiService>();

final searchedArticleFutureProvider = FutureProvider<List<Article>>((ref) async {
  final searchKeyword = ref.watch(searchKeywordProvider);
  final page = ref.watch(pageProvider);
  final sorting = ref.watch(sortingProvider);
  List<Article> articleList = <Article>[];
  final result = await _apiService.getArticle(searchKeyword, sorting, page);

  ArticleSearchApiResponse articleSearchApiResponse = ArticleSearchApiResponse.fromJson(jsonDecode(result.toString()));
  if(articleSearchApiResponse.status == 'OK' && articleSearchApiResponse.articleResponse.articles.isNotEmpty){
    articleList = articleSearchApiResponse.articleResponse.articles;
  }

  return articleList;
});


final mostPopularArticleFutureProvider = FutureProvider<List<MostPopular>>((ref) async {
  final period = ref.watch(periodProvider);
  final mostPopularType = ref.watch(mostPopularArticleType);
  late var result;

  if(mostPopularType == MostPopularArticleType.mostViewed){
    result = await _apiService.getMostViewedArticle(period.value);
  }

  if(mostPopularType == MostPopularArticleType.mostEmailed){
    result = await _apiService.getMostEmailedArticle(period.value);
  }

  if(mostPopularType == MostPopularArticleType.mostShared){
    result = await _apiService.getMostSharedArticle(period.value);
  }

  List<MostPopular> mostPopularList = <MostPopular>[];
  MostPopularApiResponse mostPopularApiResponse = MostPopularApiResponse.fromJson(jsonDecode(result.toString()));
  if(mostPopularApiResponse.status == 'OK' && mostPopularApiResponse.numResults! > 0){
    mostPopularList = mostPopularApiResponse.results!;
  }
  return mostPopularList;
});
