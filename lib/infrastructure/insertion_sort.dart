import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';

class InsertionSort implements SortingAlgorithm {
  @override
  Stream<List<Node>> sort(List<Node> array, Duration speed) async* {
    final newArray = [...array];
    int lengthOfArray = newArray.length;
    newArray[0] = newArray[0].copyWith(state: NodeState.sorted);

    for (int j = 1; j < lengthOfArray; j++) {
      Node key = newArray[j];
      int i = j - 1;
      while (i >= 0 && newArray[i].value > key.value) {
        newArray[i + 1] = newArray[i];
        i = i - 1;
        newArray[i + 1] = key.copyWith(state: NodeState.checking);
        await Future.delayed(speed);
        yield newArray;
      }
      newArray[i + 1] = newArray[i + 1].copyWith(state: NodeState.sorted);
      await Future.delayed(speed);
      yield newArray;
    }
    yield newArray;
  }
}
