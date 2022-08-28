import 'package:freezed_annotation/freezed_annotation.dart';

part 'node.freezed.dart';

@freezed
class Node with _$Node {
  const factory Node({
    required NodeState state,
    required double value,
  }) = _Node;

  factory Node.empty() => const _Node(
        state: NodeState.idle,
        value: 0,
      );
}

enum NodeState {
  idle,
  checking,
  sorted,
}
