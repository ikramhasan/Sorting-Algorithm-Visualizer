import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';

class SelectionSort implements SortingAlgorithm {
  @override
  Stream<List<Node>> sort(List<Node> array, Duration speed) async* {
    var newArray = [...array];
    int lengthOfArray = newArray.length;
    for (int i = 0; i < lengthOfArray; i++) {
      for (int j = i + 1; j < lengthOfArray; j++) {
        if (newArray[i].value > newArray[j].value) {
          Node temp = newArray[i];
          newArray[i] = newArray[j];
          newArray[j] = temp;
        }
      }
      await Future.delayed(speed);
      yield newArray;
    }
    yield newArray;
  }
}
