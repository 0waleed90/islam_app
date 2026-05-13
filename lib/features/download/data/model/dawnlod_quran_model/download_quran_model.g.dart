// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_quran_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadQuranModelAdapter extends TypeAdapter<DownloadQuranModel> {
  @override
  final int typeId = 0;

  @override
  DownloadQuranModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadQuranModel(
      number: fields[0] as int,
      name: fields[1] as String,
      englishName: fields[2] as String,
      ayahs: (fields[3] as List).cast<SimpleAyah>(),
    );
  }

  @override
  void write(BinaryWriter writer, DownloadQuranModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.englishName)
      ..writeByte(3)
      ..write(obj.ayahs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadQuranModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SimpleAyahAdapter extends TypeAdapter<SimpleAyah> {
  @override
  final int typeId = 1;

  @override
  SimpleAyah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SimpleAyah(
      numberInSurah: fields[0] as int,
      text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SimpleAyah obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.numberInSurah)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleAyahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
