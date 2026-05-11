
// ملف ayah_model.dart (نفس ما سبق)
class Ayahs {
  final int numberInSurah;

  final String text;

  Ayahs({
    required this.numberInSurah,
    required this.text,

  });

  factory Ayahs.fromJson(Map<String, dynamic> json) {
    return Ayahs(
      numberInSurah: json['numberInSurah'] ?? 0,
      text: json['text'] ?? '',

    );
  }
}

