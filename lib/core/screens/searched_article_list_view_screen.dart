import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nyt_articles/constants/api.dart';
import 'package:nyt_articles/constants/app.dart';
import 'package:nyt_articles/constants/asset_links.dart';
import 'package:nyt_articles/core/models/article_search/article.dart';
import 'package:nyt_articles/core/providers/data_providers.dart';
import 'package:nyt_articles/utils/mixins/common_mixins.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchedArticleListViewScreen extends HookConsumerWidget {

  const SearchedArticleListViewScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ThemeData themeData = Theme.of(context);
    final searchedArticleList = ref.watch(searchedArticleFutureProvider);
    final articlesList = useState(<Article>[]);

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
            child: searchedArticleList.when(
              data: (data){
                articlesList.value.addAll(data);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    itemCount: articlesList.value.length,
                    itemBuilder: (context, index){
                      var imageUrl = '';
                      if(articlesList.value[index].multimedia.isNotEmpty){
                        if(articlesList.value[index].multimedia.any((element) => element.subtype == tmagArticle)){
                          imageUrl = baseImageUrl + articlesList.value[index].multimedia.singleWhere((element) => element.subtype == tmagArticle).url!;
                        }else{
                          imageUrl = baseImageUrl + articlesList.value[index].multimedia.firstWhere((element) => element.subtype != null).url!;
                        }
                      }
                      var pageUrl = '';
                      if(articlesList.value[index].webUrl != null){
                        pageUrl = articlesList.value[index].webUrl!;
                      }
                      return Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              if(pageUrl.isNotEmpty){
                                await launchUrl(Uri.parse(pageUrl));
                              }
                            },
                            child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(articlesList.value[index].headline.main!,
                                          textAlign: TextAlign.left,
                                          style: themeData.textTheme.headline3,
                                        ),
                                      ),
                                      addVerticalSpace(16),
                                      if(imageUrl.isNotEmpty)
                                        Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(5),
                                              child: Image.network(imageUrl),
                                            ),
                                            addVerticalSpace(8)
                                          ],
                                        ),
                                      if(articlesList.value[index].headline.kicker!=null && articlesList.value[index].headline.kicker!.isNotEmpty)
                                        Column(children: [
                                          Text(articlesList.value[index].headline.kicker!),
                                          addVerticalSpace(8)
                                        ],),
                                      if(articlesList.value[index].snippet!=null && articlesList.value[index].snippet!.isNotEmpty)
                                        Text(articlesList.value[index].snippet!),
                                      addVerticalSpace(16),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(labelPublished,
                                                textAlign: TextAlign.left,
                                                style: themeData.textTheme.subtitle1,
                                              ),
                                              addHorizontalSpace(3),
                                              Text(DateFormat.yMMMEd().format(DateTime.parse(articlesList.value[index].pubDate!)),
                                                textAlign: TextAlign.left,
                                                style: themeData.textTheme.subtitle1,
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(labelReadMore,
                                                textAlign: TextAlign.left,
                                                style: themeData.textTheme.subtitle1!.copyWith(
                                                    color: Colors.blue
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),
                          addVerticalSpace(16)
                          //if(index <  articlesList.value.length - 2)addVerticalSpace(16)
                        ],
                      );
                    }
                  )
                );
              },
              error: (a,b){
                return Container();
              },
              loading: (){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    enabled: true,
                    child: ListView.builder(
                      itemBuilder: (_, __) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: screenWidth * 0.6,
                                    height: 18,
                                    color: Colors.white,
                                  ),
                                  addVerticalSpace(16),
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    color: Colors.white,
                                  ),
                                  addVerticalSpace(8),
                                  Container(
                                    width: screenWidth * 0.4,
                                    height: 14,
                                    color: Colors.white,
                                  ),
                                  addVerticalSpace(8),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 12,
                                        color: Colors.white,
                                      ),
                                      addVerticalSpace(8),
                                      Container(
                                        width: double.infinity,
                                        height: 12,
                                        color: Colors.white,
                                      ),
                                      addVerticalSpace(8),
                                      Container(
                                        width: screenWidth * 0.4,
                                        height: 12,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  addVerticalSpace(16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: screenWidth * 0.3,
                                        height: 10,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: screenWidth * 0.3,
                                        height: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      itemCount: 6,
                    ),
                  ),
                );
              }
            )
        )
    );
  }
}