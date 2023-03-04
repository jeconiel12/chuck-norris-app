import 'package:dartz/dartz.dart';

/// A helper for fetching either value for testing purpose.
///
/// Throws error when an unexpected value is returned to quickly end the test.
extension EitherX<L, R> on Either<L, R> {
  /// Returns left value if it exist.
  /// Otherwise, throws a [NotLeftError].
  L fetchLeft() => isLeft() ? (this as Left<L, R>).value : throw NotLeftError();

  /// Returns right value if it exist.
  /// Otherwise, throws a [NotRightError].
  R fetchRight() =>
      isRight() ? (this as Right<L, R>).value : throw NotRightError();
}

class NotLeftError extends Error {
  NotLeftError();

  @override
  String toString() => 'Found a Right when Left is expected';
}

class NotRightError extends Error {
  NotRightError();

  @override
  String toString() => 'Found a Left when Right is expected';
}
