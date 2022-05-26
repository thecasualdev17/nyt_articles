import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt_articles/config/app_router.dart';
import 'package:nyt_articles/config/route_paths.dart';
import 'package:nyt_articles/constants/design.dart';
import 'package:nyt_articles/utils/registry.dart';
import 'package:nyt_articles/utils/services/api_service.dart';

import 'constants/app.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupRegistry();
  HttpOverrides.global = MyHttpOverrides();
  final ApiService apiService = registry<ApiService>();
  apiService.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault, fontFamily: fontCenturyOldStyle,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: colorPrimary,
          secondary: colorAccent
        )
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RoutePaths.index,
    );
  }
}

