import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.network() = _Network;
  const factory Failure.api() = _Api;
  const factory Failure.database() = _Database;

  String get message => when(
        network: () => 'No Connection',
        api: () => 'Something went wrong on server',
        database: () => 'Something went wrong on local db',
      );
}
