// Package imports:

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_model.freezed.dart';

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel.network() = _Network;
  const factory FailureModel.api() = _Api;
  const factory FailureModel.database() = _Database;
}
