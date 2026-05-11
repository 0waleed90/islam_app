import 'package:dartz/dartz.dart';
import 'package:islam/core/errors/failure.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<QuranModel>>> fetchQuranData();
  Future<bool> hasCachedData()  ;


  Future<Either<Failures, List<DownloadQuranModel>>> getQuranWithCache();
}