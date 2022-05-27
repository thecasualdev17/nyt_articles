import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/constants/app.dart';
import 'package:nyt_articles/constants/asset_links.dart';
import 'package:nyt_articles/constants/design.dart';
import 'package:nyt_articles/core/functions/search_screen_functions.dart';
import 'package:nyt_articles/utils/mixins/common_mixins.dart';

class SearchScreen extends HookConsumerWidget {

  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ThemeData themeData = Theme.of(context);
    final searchInputController = useTextEditingController(text: '');
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.1),
          child: AppBar(
            toolbarHeight: screenHeight * 0.1,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.shade200,
            elevation: 0,
            title: Column(
              children: [
                Hero(
                  tag: hTagBanner,
                  child: SizedBox(
                    width: screenWidth * 0.6,
                    child: Image.asset(banner, fit: BoxFit.contain,),
                  ),
                ),
              ],
            ),
            centerTitle: true,
          ),
        ),
        body: SafeArea(
            bottom: false,
            child: Column(
                children: [
                  Hero(
                    tag: hTagNavSearch,
                    child: Text(labelSearchArticle, style: themeData.textTheme.headline4!.copyWith(
                        fontFamily: fontCenturyOldStyleAllCaps,
                        fontWeight: FontWeight.w200
                      ),
                    ),
                  ),
                  addVerticalSpace(8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextField(
                      autofocus: true,
                      controller: searchInputController,
                      style: themeData.textTheme.bodyText1!.copyWith(
                        height: 1.5
                      ),
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        hintText: 'Batman, Superman',
                        hintStyle: themeData.textTheme.bodyText1!.copyWith(
                          fontStyle: FontStyle.italic,
                          color: colorGrey
                        ),
                        contentPadding: const EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: colorGrey),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1.5, color: colorBlack),
                              borderRadius: BorderRadius.circular(5)
                          )
                      ),
                      onSubmitted: (value){
                        SearchScreenFunctions.onSearchSubmitted(context, ref, value);
                      },
                    ),
                  ),
                  addVerticalSpace(8),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(screenWidth * 0.4, 40),
                      backgroundColor: colorPrimary
                    ),
                    onPressed: (){
                      SearchScreenFunctions.onSearchSubmitted(context, ref, searchInputController.text);
                    },
                    child: Text(labelSearch, style: themeData.textTheme.bodyText1!.copyWith(
                      color: colorWhite
                    ),)
                  )
                ]
            )
        )
    );
  }
}