
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/constants/app.dart';
import 'package:nyt_articles/constants/asset_links.dart';
import 'package:nyt_articles/constants/enums.dart';
import 'package:nyt_articles/core/functions/main_screen_functions.dart';
import 'package:nyt_articles/utils/mixins/common_mixins.dart';
import 'package:nyt_articles/utils/mixins/navigation_item.dart';
import 'package:nyt_articles/utils/registry.dart';
import 'package:nyt_articles/utils/services/navigation_service.dart';


class MainScreen extends HookConsumerWidget {

  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final NavigationService nav = registry<NavigationService>();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.3),
        child: AppBar(
          toolbarHeight: screenHeight * 0.3,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          title: Column(
            children: [
              Hero(
                tag: hTagBanner,
                child: SizedBox(
                  width: screenWidth * 0.7,
                  child: Image.asset(banner, fit: BoxFit.contain,),
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
              children: [
                NavigationItem(
                  navigationLabel: labelSearch,
                  navigationSubLabel: labelSearchArticle,
                  onClick: (){
                    nav.to(context, RoutePaths.searchScreen);
                  },
                  heroTag: hTagNavSearch,
                ),
                addVerticalSpace(36),
                NavigationItem(
                  navigationLabel: labelPopular,
                  navigationSubLabel: labelMostViewed,
                  isBottomDividerVisible: false,
                  onClick: (){
                    MainScreenFunctions.getMostPopularArticles(context, ref, MostPopularArticleType.mostViewed);
                  },
                  heroTag: hTagNavMostViewed,
                ),
                NavigationItem(
                  navigationSubLabel: labelMostShared,
                  isBottomDividerVisible: false,
                  onClick: (){
                    MainScreenFunctions.getMostPopularArticles(context, ref, MostPopularArticleType.mostShared);
                  },
                  heroTag: hTagNavMostShared,
                ),
                NavigationItem(
                  navigationSubLabel: labelMostEmailed,
                  onClick: (){
                    MainScreenFunctions.getMostPopularArticles(context, ref, MostPopularArticleType.mostEmailed);
                  },
                  heroTag: hTagNavMostEmailed,
                ),
              ]
          ),
        )
      )
    );
  }
}
