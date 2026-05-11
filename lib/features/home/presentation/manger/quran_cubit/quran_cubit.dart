import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam/core/errors/failure.dart';
import 'package:islam/features/home/data/repo/home_repo.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  final HomeRepo homeRepo;

  QuranCubit(this.homeRepo):super(QuranInitial());

  Future<bool> hasCachedData() async {
    return await homeRepo.hasCachedData();
  }

  Future<void> LoadQuranData() async {
    emit(QuranLoading());
    var result = await homeRepo.getQuranWithCache();
    result.fold(
      (failure) {
        emit(DquranError(errorMessage: failure.errorMessage));
      },
      (sura) {
        emit(QuranLoaded(sura));
      },
    );
  }


}
