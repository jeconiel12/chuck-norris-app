import 'package:bloc/bloc.dart';
import 'package:chuck_norris_joke/domain/color/i_color_repository.dart';
import 'package:chuck_norris_joke/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_state.dart';
part 'color_cubit.freezed.dart';

class ColorCubit extends Cubit<ColorState> {
  final IColorRepository colorRepository;
  ColorCubit({
    required this.colorRepository,
  }) : super(ColorState.initial());

  Future<void> getColor() async {
    final response = await colorRepository.getColor();
    response.fold(
      (failure) => emit(state.copyWith(color: ThemeColor.red)),
      (color) => color != null
          ? emit(state.copyWith(color: color))
          : emit(state.copyWith(color: ThemeColor.red)),
    );
  }

  Future<void> changeColor(Color color) async {
    colorRepository.saveColor(color);
    emit(state.copyWith(color: color));
  }
}
