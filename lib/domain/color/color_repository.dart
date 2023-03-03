import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

@lazySingleton
class ColorRepository {
  ColorRepository({
    ColorLocalStorage? colorLocal,
  }) : _colorLocal = colorLocal ?? ColorLocalStorage();

  final ColorLocalStorage _colorLocal;

  RepoResult<int?> getColorCode() async {
    try {
      final colorCode = _colorLocal.getColorCode();
      return right(colorCode);
    } on Exception {
      return const Left(Failure.database());
    }
  }

  Future<Either<Failure, Unit>> saveColorCode(int colorCode) async {
    try {
      await _colorLocal.saveColor(colorCode);
      return const Right(unit);
    } on Exception {
      return const Left(Failure.database());
    }
  }
}
