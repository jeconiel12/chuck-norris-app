// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/di/di.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init();
