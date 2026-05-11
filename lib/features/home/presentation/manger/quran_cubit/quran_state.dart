import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';

abstract class QuranState {




}
class QuranInitial extends QuranState {}
class QuranLoaded extends QuranState {
  final List<DownloadQuranModel> sura;

  QuranLoaded(this.sura);
}
class QuranLoading extends QuranState {}
class DquranError extends QuranState {
  final String errorMessage;

  DquranError({required this.errorMessage});
}


