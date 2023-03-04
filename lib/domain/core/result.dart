import 'package:dartz/dartz.dart';

import 'package:chuck_norris_joke/domain/domain.dart';

typedef FutureResult<T> = Future<Either<Failure, T>>;
typedef Result<T> = Either<Failure, T>;
