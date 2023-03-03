import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/domain.dart';
import 'package:chuck_norris_joke/presentation/theme/theme.dart';

part 'color_state.dart';
part 'color_cubit.freezed.dart';

@injectable
class ColorCubit extends Cubit<ColorState> {
  ColorCubit({
    required this.colorRepository,
  }) : super(ColorState.initial());

  final ColorRepository colorRepository;

  Future<void> getColor() async {
    final response = await colorRepository.getColorCode();
    response.fold(
      (failure) => emit(state.copyWith(color: ThemeColor.red)),
      (colorCode) => colorCode != null
          ? emit(state.copyWith(color: Color(colorCode)))
          : emit(state.copyWith(color: ThemeColor.red)),
    );
  }

  Future<void> changeColor(Color color) async {
    await colorRepository.saveColorCode(color.value);
    emit(state.copyWith(color: color));
  }
}
