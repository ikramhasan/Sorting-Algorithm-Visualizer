import 'package:sorting_visualizer/domain/node.dart';

abstract class SortingAlgorithm {
  Stream<List<Node>> sort(List<Node> array, Duration speed);
}

enum Algorithm {
  bubble,
  selection,
  insertion,
  // quick,
}
