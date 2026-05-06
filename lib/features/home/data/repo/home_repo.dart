import 'package:dartz/dartz.dart';
import 'package:islam/core/errors/failure.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<QuranModel>>> fetchsuras();

}