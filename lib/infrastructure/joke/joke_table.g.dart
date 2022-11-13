// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JokeTableAdapter extends TypeAdapter<JokeTable> {
  @override
  final int typeId = 0;

  @override
  JokeTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JokeTable(
      id: fields[0] as String,
      value: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, JokeTable obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JokeTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
