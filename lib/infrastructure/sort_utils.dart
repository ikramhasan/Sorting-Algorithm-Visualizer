import 'dart:math';

import 'package:sorting_visualizer/domain/node.dart';

List<Node> generateArrayWithRandomNodes(int length, int maxHeight) {
  List<Node> array = [];
  final random = Random();

  for (int i = 0; i < length; i++) {
    array.add(
      Node(
        state: NodeState.idle,
        value: random.nextInt(maxHeight).toDouble(),
      ),
    );
  }

  return array;
}
