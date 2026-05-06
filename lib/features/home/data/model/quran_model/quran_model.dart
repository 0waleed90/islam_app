import 'package:islam/features/home/data/model/quran_model/ayahs.dart';

class QuranModel {
  final int number;
  final String name;
  final String englishName;
  final List<Ayahs> ayahs;
  QuranModel({
    required this.name,
    required this.number,
    required this.englishName,
    required this.ayahs,
  });
  factory QuranModel.FromJson(jsonData) {
    return QuranModel(
      name: jsonData['name'],
      number: jsonData['number'],
      englishName: jsonData['englishName'],
      ayahs: jsonData['ayahs'],
    );
  }
}
