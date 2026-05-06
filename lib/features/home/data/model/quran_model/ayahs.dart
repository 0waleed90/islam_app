class Ayahs {
  final int number;
  final String text;

  Ayahs({required this.number, required this.text});

  factory Ayahs.formJson(jsonData) {
    return Ayahs(number: jsonData['number'], text: jsonData['text']);
  }
}
