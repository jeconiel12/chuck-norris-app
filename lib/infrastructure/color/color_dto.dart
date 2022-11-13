import 'package:chuck_norris_joke/infrastructure/color/color_table.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_dto.freezed.dart';

@freezed
class ColorDto with _$ColorDto {
  const ColorDto._();

  factory ColorDto({
    required String code,
  }) = _ColorDto;

  factory ColorDto.fromTable(ColorTable table) {
    return ColorDto(code: table.code);
  }
  factory ColorDto.fromColor(Color color) {
    return ColorDto(code: color.value.toRadixString(16).toUpperCase());
  }

  ColorTable get toTable {
    return ColorTable(code: code);
  }

  Color get toColor {
    return Color(int.parse('0x$code'));
  }
}
