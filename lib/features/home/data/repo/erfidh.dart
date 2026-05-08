import 'package:dio/dio.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/models/surah_model.dart';

class QuranService {
  final Dio dio = Dio();

  // تحميل وحفظ القرآن
  Future<void> downloadAndSaveQuran() async {
    try {
      // 1️⃣ تحميل من API
      final response = await dio.get(
        'https://api.alquran.cloud/v1/quran/ar.alafasy',
        options: Options(
          connectTimeout: Duration(seconds: 30),
          receiveTimeout: Duration(seconds: 30),
        ),
      );

      if (response.statusCode == 200) {
        final json = response.data;

        // 2️⃣ استخراج البيانات
        final List<dynamic> surahsData = json['data']['surahs'];

        List<Surah> surahs = surahsData.map((surah) {
          return Surah.fromJson(surah);
        }).toList();

        // 3️⃣ حفظ في Hive
        final box = await Hive.openBox<Surah>(kQuranBox);
        await box.clear();
        await box.addAll(surahs);

        // ✅ ضع علامة بأن التحميل انتهى
        await markQuranAsDownloaded();

        print('✅ تم حفظ القرآن بنجاح');
      }
    } on DioException catch (e) {
      print('❌ خطأ Dio: ${e.message}');
      rethrow;
    } catch (e) {
      print('❌ خطأ: $e');
      rethrow;
    }
  }

  // قراءة من Hive (بدون نت)
  Future<List<Surah>> getOfflineQuran() async {
    final box = await Hive.openBox<Surah>(kQuranBox);
    return box.values.toList();
  }

  // الحصول على سورة معينة
  Future<Surah?> getSurah(int index) async {
    final box = await Hive.openBox<Surah>(kQuranBox);
    return box.getAt(index);
  }
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