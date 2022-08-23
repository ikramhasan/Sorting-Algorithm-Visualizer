import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';

class InsertionSort implements SortingAlgorithm {
  @override
  Stream<List<Node>> sort(List<Node> array, Duration speed) async* {
    final newArray = [...array];
    int lengthOfArray = newArray.length;

    for (int j = 1; j < lengthOfArray; j++) {
      Node key = newArray[j];
      int i = j - 1;
      while (i >= 0 && newArray[i].value > key.value) {
        newArray[i + 1] = newArray[i];
        i = i - 1;
        newArray[i + 1] = key;
      }
      await Future.delayed(speed);
      yield newArray;
    }
    yield newArray;
  }
}
