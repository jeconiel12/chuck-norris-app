import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/color/i_color_repository.dart';
import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/infrastructure/color/color_dto.dart';
import 'package:chuck_norris_joke/infrastructure/color/color_hive.dart';

@LazySingleton(as: IColorRepository)
class ColorRepository implements IColorRepository {
  const ColorRepository({
    required this.colorHive,
  });

  final ColorHive colorHive;

  @override
  Future<Either<FailureModel, Color?>> getColor() async {
    try {
      final colorTable = await colorHive.getColor();
      return colorTable != null
          ? Right(ColorDto.fromTable(colorTable).toColor)
          : const Right(null);
    } on Exception {
      return const Left(FailureModel.database());
    }
  }

  @override
  Future<Either<FailureModel, Unit>> saveColor(Color color) async {
    try {
      await colorHive.saveColor(ColorDto.fromColor(color).toTable);
      return const Right(unit);
    } on Exception {
      return const Left(FailureModel.database());
    }
  }
}
