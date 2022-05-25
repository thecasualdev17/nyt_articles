import 'package:get_it/get_it.dart';
import 'package:nyt_articles/utils/services/api_service.dart';

GetIt registry = GetIt.instance;

void setupRegistry(){
  registry.registerLazySingleton(() => ApiService());
}