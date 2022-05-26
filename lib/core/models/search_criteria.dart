import 'package:nyt_articles/constants/enums.dart';

class SearchCriteria{
  final String searchKeyword;
  final Sorting sorting;

  const SearchCriteria({required this.searchKeyword, this.sorting = Sorting.relevance});
}