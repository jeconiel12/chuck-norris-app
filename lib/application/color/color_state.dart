part of 'color_cubit.dart';

@freezed
class ColorState with _$ColorState {
  const factory ColorState({
    required Color color,
  }) = _ColorState;

  const ColorState._();

  factory ColorState.initial() {
    return const ColorState(color: Colors.white);
  }
}
