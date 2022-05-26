import 'package:flutter/material.dart';
import 'package:nyt_articles/constants/app.dart';

class NavigationItem extends StatelessWidget {

  const NavigationItem({
    Key? key,
    required this.navigationSubLabel,
    this.navigationLabel,
    this.onClick,
    this.isBottomDividerVisible = true,
    this.heroTag
  }) : super(key: key);

  final String? navigationLabel;
  final String navigationSubLabel;
  final Function? onClick;
  final bool isBottomDividerVisible;
  final String? heroTag;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(navigationLabel != null)Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          child: Text(navigationLabel!, style: themeData.textTheme.headline3!.copyWith(
            fontFamily: fontCenturyOldStyleAllCaps
          ),),
        ),
        InkWell(
          onTap: (){
            if(onClick != null){
              onClick!();
            }
          },
          child: Column(
            children: [
              const Divider(
                height: 0,
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heroTag!= null?Hero(
                      tag: heroTag!,
                      child: Text(navigationSubLabel, style: themeData.textTheme.bodyText1,),
                    ):Text(navigationSubLabel, style: themeData.textTheme.bodyText1,),
                    const Icon(Icons.chevron_right, size: 16,)
                  ],
                ),
              ),
              if(isBottomDividerVisible)const Divider(
                height: 0,
                thickness: 1.5,
              )
            ],
          ),
        ),
      ],
    );
  }
}