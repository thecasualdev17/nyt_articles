import 'package:flutter/foundation.dart';

// Sorting Start
enum Sorting {
  newest,
  oldest,
  relevance
}

extension SortingExtention on Sorting{
  String get name => describeEnum(this);

  String get label {
    switch(this){
      case Sorting.newest:
        return 'newest';
      case Sorting.oldest:
        return 'oldest';
      case Sorting.relevance:
        return 'relevance';
      default:
        return 'relevance';
    }
  }
}
// Sorting End

// Period Start
enum Period {
  day,
  week,
  month
}

extension PeriodExtention on Period{
  String get name => describeEnum(this);

  int get value {
    switch(this){
      case Period.day:
        return 1;
      case Period.week:
        return 7;
      case Period.month:
        return 30;
      default:
        return 1;
    }
  }
}
// Period End

// Most Popular Type Start
enum MostPopularArticleType{
  mostViewed,
  mostEmailed,
  mostShared
}
// Most Popular End