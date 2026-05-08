// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuranModelAdapter extends TypeAdapter<QuranModel> {
  @override
  final int typeId = 0;

  @override
  QuranModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuranModel(
      name: fields[1] as String,
      number: fields[0] as int,
      englishName: fields[2] as String,
      ayahs: (fields[3] as List).cast<Ayahs>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuranModel obj) {
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
      other is QuranModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
