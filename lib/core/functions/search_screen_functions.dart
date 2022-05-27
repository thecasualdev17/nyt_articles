import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/utils/registry.dart';
import 'package:nyt_articles/utils/services/navigation_service.dart';

class AppFunctions{
  static onSearchSubmitted(BuildContext context, WidgetRef ref, String data){
    final NavigationService nav = registry<NavigationService>();
    FocusManager.instance.primaryFocus?.unfocus();
    nav.to(context, RoutePaths.index);
    print('data: ' + data);
  }
}