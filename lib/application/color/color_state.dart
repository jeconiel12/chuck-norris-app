part of 'color_cubit.dart';

@freezed
class ColorState with _$ColorState {
  const ColorState._();

  const factory ColorState({
    required Color color,
  }) = _ColorState;

  factory ColorState.initial() {
    return const ColorState(color: Colors.white);
  }
}
