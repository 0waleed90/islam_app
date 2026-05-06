import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:islam/core/errors/failure.dart';
import 'package:islam/core/util/api_service.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';
import 'package:islam/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<QuranModel>>> fetchsuras() async {
    try {
      var data = await apiService.get(endPoint: '/v1/quran/quran-uthmani');
      List<QuranModel> sura = [];
      for (var item in data['items']) {
        sura.add(QuranModel.FromJson(item));
      }
      return right(sura);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
