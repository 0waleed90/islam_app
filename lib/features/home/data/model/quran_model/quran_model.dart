
import 'package:islam/features/home/data/model/quran_model/ayahs.dart';

class QuranModel {
  final int number;
  final String name;
  final String englishName;
  final List<Ayahs> ayahs;

  QuranModel({
    required this.number,
    required this.name,
    required this.englishName,
    required this.ayahs,
  });

  factory QuranModel.fromJson(Map<String, dynamic> json) {
    List<Ayahs> ayahsList = [];

    if (json['ayahs'] != null && json['ayahs'] is List) {
      ayahsList = (json['ayahs'] as List)
          .map((ayah) => Ayahs.fromJson(ayah))
          .toList();
    }

    return QuranModel(
      number: json['number'] ?? 0,
      name: json['name'] ?? '',
      englishName: json['englishName'] ?? '',
      ayahs: ayahsList,
    );
  }
}

//
// import 'package:hive/hive.dart';
// import 'package:islam/features/home/data/model/quran_model/ayahs.dart';
// part 'quran_model.g.dart';
// @HiveType(typeId: 0)
// class QuranModel {
//   @HiveField(0)
//   final int number;
//   @HiveField(1)
//
//   final String name;
//   @HiveField(2)
//
//   final String englishName;
//   @HiveField(3)
//
//   final List<Ayahs> ayahs;
//   QuranModel({
//     required this.name,
//     required this.number,
//     required this.englishName,
//     required this.ayahs,
//   });
//   factory QuranModel.FromJson(jsonData) {
//     return QuranModel(
//       name: jsonData['name'],
//       number: jsonData['number'],
//       englishName: jsonData['englishName'],
//       ayahs: jsonData['ayahs'],
//     );
//   }
// }
