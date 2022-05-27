import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/constants/enums.dart';
import 'package:nyt_articles/utils/registry.dart';
import 'package:nyt_articles/utils/services/navigation_service.dart';
import 'package:nyt_articles/core/providers/general_providers.dart';

class MainScreenFunctions{
  static getMostPopularArticles(BuildContext context, WidgetRef ref, MostPopularArticleType type){
    final NavigationService nav = registry<NavigationService>();
    ref.read(mostPopularArticleType.state).update((state) => type);
    nav.to(context, RoutePaths.mostPopularViewScreen);
  }
}