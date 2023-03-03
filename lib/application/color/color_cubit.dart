import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/color/i_color_repository.dart';
import 'package:chuck_norris_joke/presentation/theme/theme.dart';

part 'color_state.dart';
part 'color_cubit.freezed.dart';

@injectable
class ColorCubit extends Cubit<ColorState> {
  ColorCubit({
    required this.colorRepository,
  }) : super(ColorState.initial());

  final IColorRepository colorRepository;

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
    await colorRepository.saveColor(color);
    emit(state.copyWith(color: color));
  }
}
