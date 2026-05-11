import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:islam/core/util/api_service/quran_api_service.dart';
import 'package:islam/features/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<QuranApiService>(QuranApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<QuranApiService>()));
}
