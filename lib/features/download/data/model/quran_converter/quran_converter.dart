import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/data/model/quran_model/quran_model.dart';

class QuranConverter {
  static DownloadQuranModel toSimpleSurah(QuranModel model) {
    return DownloadQuranModel(
      number: model.number,
      name: model.name,
      englishName: model.englishName,
      ayahs: model.ayahs.map((ayah) {
        return SimpleAyah(numberInSurah: ayah.numberInSurah, text: ayah.text);
      }).toList(),
    );
  }
}
