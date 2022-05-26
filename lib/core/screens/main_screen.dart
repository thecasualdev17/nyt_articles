import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/constants/asset_links.dart';
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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.3),
        child: AppBar(
          toolbarHeight: screenHeight * 0.3,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              Hero(
                tag: 'banner',
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
                  navigationLabel: 'Search',
                  navigationSubLabel: 'Search Article',
                  onClick: (){
                    nav.to(context, RoutePaths.searchScreen);
                  },
                  heroTag: 'nav',
                ),
                addVerticalSpace(36),
                const NavigationItem(
                  navigationLabel: 'Popular',
                  navigationSubLabel: 'Most Viewed',
                  isBottomDividerVisible: false,
                ),
                const NavigationItem(
                  navigationSubLabel: 'Most Shared',
                  isBottomDividerVisible: false,
                ),
                const NavigationItem(
                    navigationSubLabel: 'Most Emailed'
                ),
              ]
          ),
        )
      )
    );
  }
}
