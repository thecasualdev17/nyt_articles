import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/constants/enums.dart';

final periodProvider = StateProvider<Period>((ref) => Period.day);
final searchKeywordProvider = StateProvider<String>((ref) => '');
final sortingProvider = StateProvider<Sorting>((ref) => Sorting.relevance);
final pageProvider = StateProvider<int>((ref) => 1);
final mostPopularArticleType = StateProvider<MostPopularArticleType?>((ref) => MostPopularArticleType.mostViewed);