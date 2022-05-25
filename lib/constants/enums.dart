import 'package:flutter/foundation.dart';

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