import 'package:hive/hive.dart';
part 'download_quran_model.g.dart';

@HiveType(typeId: 0)
class DownloadQuranModel {
  @HiveField(0)
  final int number;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String englishName;

  @HiveField(3)
  final List<SimpleAyah> ayahs;

  DownloadQuranModel({
    required this.number,
    required this.name,
    required this.englishName,
    required this.ayahs,
  });
}

@HiveType(typeId: 1)
class SimpleAyah {
  @HiveField(0)
  final int numberInSurah;

  @HiveField(1)
  final String text;

  SimpleAyah({required this.numberInSurah, required this.text});
}
