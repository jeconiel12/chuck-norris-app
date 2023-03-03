import 'package:dartz/dartz.dart';

import 'package:chuck_norris_joke/domain/domain.dart';

typedef RepoResult<T> = Future<Either<Failure, T>>;
