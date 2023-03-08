import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/domain.dart';
import 'package:chuck_norris_joke/theme/theme.dart';

part 'color_state.dart';
part 'color_cubit.freezed.dart';

@injectable
class ColorCubit extends Cubit<ColorState> {
  ColorCubit({
    required this.colorRepository,
  }) : super(ColorState.initial());

  final ColorRepository colorRepository;

  void getColor() {
    final response = colorRepository.getColorCode();
    emit(
      state.copyWith(
        color: response.fold(
          (failure) => ThemeColor.red,
          (colorCode) => colorCode != null ? Color(colorCode) : ThemeColor.red,
        ),
      ),
    );
  }

  Future<void> setColor(Color color) async {
    await colorRepository.saveColorCode(color.value);
    emit(state.copyWith(color: color));
  }
}
