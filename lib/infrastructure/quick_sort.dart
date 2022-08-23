import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';

class QuickSort implements SortingAlgorithm {
  @override
  Stream<List<Node>> sort(List<Node> array, Duration speed) async* {
    int low = 0;
    int high = array.length - 1;
    var newArray = [...array];

    yield* quickSort(newArray, low, high, speed);
  }
}

Stream<List<Node>> quickSort(
  List<Node> list,
  int low,
  int high,
  Duration speed,
) async* {
  if (low < high) {
    int pi = _partition(list, low, high);

    quickSort(list, low, pi - 1, speed);
    quickSort(list, pi + 1, high, speed);
  }
  yield list;
}

int _partition(List<Node> list, int low, int high) {
  // Base check
  if (list.isEmpty) {
    return 0;
  }
  // Take our last element as pivot and counter i one less than low
  double pivot = list[high].value;

  int i = low - 1;
  for (int j = low; j < high; j++) {
    // When j is < than pivot element we increment i and swap arr[i] and arr[j]
    if (list[j].value < pivot) {
      i++;
      swap(list, i, j);
    }
    
  }
  // Swap the last element and place in front of the i'th element
  swap(list, i + 1, high);
  return i + 1;
}

// Swapping using a temp variable
void swap(List<Node> list, int i, int j) {
  Node temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
