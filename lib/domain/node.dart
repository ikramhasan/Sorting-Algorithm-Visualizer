import 'package:freezed_annotation/freezed_annotation.dart';

part 'node.freezed.dart';

@freezed
class Node with _$Node {
  const factory Node({
    required bool state,
    required double value,
  }) = _Node;

  factory Node.empty() => const _Node(
        state: false,
        value: 0,
      );
}
