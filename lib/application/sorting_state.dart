part of 'sorting_cubit.dart';

@freezed
class SortingState with _$SortingState {
  const factory SortingState({
    required int length,
    required Color color,
    required List<Node> array,
    required Algorithm algorithm,
    required Duration speed,
    required double maxHeight,
    required bool sorting,
    required bool sorted,
    required bool playing,
  }) = _SortingState;

  factory SortingState.initial() => const _SortingState(
        color: Colors.white,
        length: 100,
        array: [],
        speed: Duration(milliseconds: 0),
        algorithm: Algorithm.bubble,
        maxHeight: 800,
        sorting: false,
        playing: false,
        sorted: false,
      );
}
