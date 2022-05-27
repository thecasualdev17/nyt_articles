import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/core/providers/general_providers.dart';
import 'package:nyt_articles/utils/registry.dart';
import 'package:nyt_articles/utils/services/navigation_service.dart';

class SearchScreenFunctions{
  static onSearchSubmitted(BuildContext context, WidgetRef ref, String data){
    final NavigationService nav = registry<NavigationService>();
    FocusManager.instance.primaryFocus?.unfocus();
    ref.read(searchKeywordProvider.state).update((state) => data);
    nav.to(context, RoutePaths.searchedArticleViewScreen);
  }
}