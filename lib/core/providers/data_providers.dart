import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/constants/enums.dart';
import 'package:nyt_articles/core/models/article_search/article.dart';
import 'package:nyt_articles/core/models/most_popular/most_popular.dart';
import 'package:nyt_articles/core/models/most_popular_api_response.dart';
import 'package:nyt_articles/utils/registry.dart';

import '../../utils/services/api_service.dart';
import 'general_providers.dart';

final ApiService _apiService = registry<ApiService>();
final searchedArticleFutureProvider = FutureProvider<List<Article>>((ref) async {
  //final
  //final result = await _apiService.getArticle(searchString, sorting, page)
  return <Article>[];
});

final mostViewedArticleFutureProvider = FutureProvider<List<MostPopular>>((ref) async {
  final period = ref.watch(periodProvider);
  final result = await _apiService.getMostViewedArticle(period.value);
  List<MostPopular> mostPopularList = <MostPopular>[];
  MostPopularApiResponse mostPopularApiResponse = MostPopularApiResponse.fromJson(jsonDecode(result.toString()));
  if(mostPopularApiResponse.status == 'OK' && mostPopularApiResponse.numResults! > 0){
    mostPopularList = mostPopularApiResponse.results!;
  }
  return mostPopularList;
});

final mostEmailedArticleFutureProvider = FutureProvider<List<MostPopular>>((ref) async {
  final period = ref.watch(periodProvider);
  final result = await _apiService.getMostEmailedArticle(period.value);
  print(result);
  return <MostPopular>[];
});

final mostSharedArticleFutureProvider = FutureProvider<List<MostPopular>>((ref) async {
  final period = ref.watch(periodProvider);
  final result = await _apiService.getMostSharedArticle(period.value);
  print(result);
  return <MostPopular>[];
});