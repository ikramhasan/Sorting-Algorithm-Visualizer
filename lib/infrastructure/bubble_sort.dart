import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';

class BubbleSort implements SortingAlgorithm {
  @override
  Stream<List<Node>> sort(List<Node> array, Duration speed) async* {
    var newArray = [...array];
    int lengthOfArray = newArray.length;
    for (int i = 0; i < lengthOfArray - 1; i++) {
      for (int j = 0; j < lengthOfArray - i - 1; j++) {
        if (newArray[j].value > newArray[j + 1].value) {
          Node temp = newArray[j];
          newArray[j] = newArray[j + 1];
          newArray[j + 1] = temp;
        }
        await Future.delayed(speed);
        yield newArray;
      }
    }
    yield newArray;
  }
}
