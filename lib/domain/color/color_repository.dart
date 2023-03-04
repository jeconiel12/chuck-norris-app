import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

@lazySingleton
class ColorRepository {
  ColorRepository({
    required ColorLocalStorage colorLocal,
  }) : _colorLocal = colorLocal;

  final ColorLocalStorage _colorLocal;

  FutureResult<int?> getColorCode() async {
    try {
      final colorCode = _colorLocal.getColorCode();
      return right(colorCode);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  FutureResult<Unit> saveColorCode(int colorCode) async {
    try {
      await _colorLocal.saveColor(colorCode);
      return right(unit);
    } catch (_) {
      return left(const Failure.database());
    }
  }
}
