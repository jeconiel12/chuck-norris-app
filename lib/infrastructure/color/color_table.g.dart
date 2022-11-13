// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ColorTableAdapter extends TypeAdapter<ColorTable> {
  @override
  final int typeId = 1;

  @override
  ColorTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ColorTable(
      code: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ColorTable obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
