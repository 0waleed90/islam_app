import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/errors/failure.dart';
import 'package:islam/core/util/api_service/quran_api_service.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';
import 'package:islam/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
   late final QuranApiService quranApiService;
 final List<QuranModel> sura = [];


  @override
  Future<Either<Failures, List<QuranModel>>> downloadAndSaveQuran() async {
    try {
      var data = await quranApiService.get(endPoint: '/v1/quran/quran-uthmani');

      for (var item in data['items']) {
        sura.add(QuranModel.FromJson(item));
      }
      // 3️⃣ حفظ في Hive
      final box = await Hive.openBox<QuranModel>(kQuranBox);
      await box.clear();
      await box.addAll(sura);

      // ✅ ضع علامة بأن التحميل انتهى
      await markQuranAsDownloaded();

      print('✅ تم حفظ القرآن بنجاح');
      return right(sura);


    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }


  }



  // قراءة من Hive (بدون نت)
  Future<List<QuranModel>> getOfflineQuran() async {
    final box = await Hive.openBox<QuranModel>(kQuranBox);
    return box.values.toList();
  }

  // الحصول على سورة معينة
  Future<QuranModel?> getSurah(int index) async {
    final box = await Hive.openBox<QuranModel>(kQuranBox);
    return box.getAt(index);
  }

  // التحقق ما إذا تم التحميل من قبل
  Future<bool> isQuranDownloaded() async {
    final box = await Hive.openBox('app_status');
    return box.get('quran_downloaded', defaultValue: false);
  }

  // ضع علامة بأن التحميل تم
  Future<void> markQuranAsDownloaded() async {
    final box = await Hive.openBox('app_status');
    await box.put('quran_downloaded', true);
  }
}
