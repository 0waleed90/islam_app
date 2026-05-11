import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islam/core/errors/failure.dart';
import 'package:islam/core/util/api_service/quran_api_service.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/download/data/model/quran_converter/quran_converter.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';
import 'package:islam/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  static const String kQuranDownloaded = 'quran';

  final QuranApiService quranApiService;

  HomeRepoImpl(this.quranApiService);

  @override
  Future<Either<Failures, List<QuranModel>>> fetchQuranData() async {
    try {
      var data = await quranApiService.get(endPoint: '/v1/quran/quran-uthmani');
      final List<QuranModel> sura = [];

      for (var item in data['data']['surahs']) {
        sura.add(QuranModel.fromJson(item));
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

  @override
  Future<Either<Failures, List<DownloadQuranModel>>> getQuranWithCache() async {
    try {
      // فتح Box
      final box = await Hive.openBox<DownloadQuranModel>(kQuranDownloaded);

      if (box.isNotEmpty) {
        return right(box.values.toList());
      }
      final result = await fetchQuranData();

      return result.fold((failure) => left(failure), (quranApiModel) async {
        final simpleSurahs = quranApiModel.map((surah) {
          return QuranConverter.toSimpleSurah(surah);
        }).toList();

        for (var surah in simpleSurahs) {
          await box.put(surah.number, surah);
        }

        return right(simpleSurahs);
      });
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<bool> hasCachedData() async {
    try {
      final box = await Hive.openBox<DownloadQuranModel>(kQuranDownloaded);
      return box.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
