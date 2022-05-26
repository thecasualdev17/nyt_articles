import 'package:flutter/material.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/core/screens/main_screen.dart';
import 'package:nyt_articles/core/screens/search_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutePaths.index:
        return getRoute(() => const MainScreen());
      case RoutePaths.searchScreen:
        return getRoute(() => const SearchScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            )
        );
    }
  }

  static MaterialPageRoute getRoute(dynamic nextScreen){
    return MaterialPageRoute(builder: (context) => nextScreen(), settings: RouteSettings(name: nextScreen.runtimeType.toString()));
  }
}