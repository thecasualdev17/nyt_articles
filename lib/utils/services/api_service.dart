import 'package:dio/dio.dart';
import 'package:nyt_articles/config/secret.dart';
import 'package:nyt_articles/constants/api.dart';

import '../../constants/enums.dart';

class ApiService {
  late Dio _baseApiServiceCaller;
  late Dio _imageServiceCaller;

  var options = BaseOptions(
    connectTimeout: 5 * 1000,
    receiveTimeout: 5 * 1000,
    contentType: 'application/json'
  );

  init(){
    _baseApiServiceCaller = Dio(options.copyWith(
      baseUrl: baseUrl,
      queryParameters: {
        'api-key': nytApiKey
      }
    ));

    _imageServiceCaller = Dio(options.copyWith(
       baseUrl: baseImageUrl
    ));
  }

  getMostViewedArticle(int period) async {
    var response = await _baseApiServiceCaller.get('$mostViewedUrl$period.json');
    //print(response);
    return response;
  }

  getMostSharedArticle(int period) async{
    var response = await _baseApiServiceCaller.get('$mostSharedUrl$period.json');
    print(response);
    return response;
  }

  getMostEmailedArticle(int period) async{
    var response = await _baseApiServiceCaller.get('$mostEmailedUrl$period.json');
    print(response);
    return response;
  }
  getArticle(String searchString, Sorting sorting, int page) async {
    var response = await _baseApiServiceCaller
      .get(articlesUrl, queryParameters: {
        'sort': sorting.label,
        'page': page,
        'q': searchString
      }
    );
    print(response);
    return response;
  }
}