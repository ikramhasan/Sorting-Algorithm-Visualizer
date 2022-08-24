import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sorting_visualizer/infrastructure/bubble_sort.dart';
import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/infrastructure/insertion_sort.dart';
import 'package:sorting_visualizer/infrastructure/quick_sort.dart';
import 'package:sorting_visualizer/infrastructure/selection_sort.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';

part 'sorting_cubit.freezed.dart';
part 'sorting_state.dart';

class SortingCubit extends Cubit<SortingState> {
  SortingCubit() : super(SortingState.initial());
  StreamSubscription? _sortSubscription;
  final BubbleSort _bubbleSort = BubbleSort();
  final SelectionSort _selectionSort = SelectionSort();
  final InsertionSort _insertionSort = InsertionSort();
  final QuickSort _quickSort = QuickSort();

  void initialize(double height) {
    _sortSubscription?.cancel();
    emit(state.copyWith(maxHeight: height, sorting: false));
    _createAndEmitRandomArray(state.length);
  }

  void sort() {
    switch (state.algorithm) {
      case Algorithm.bubble:
        _sortAndEmitArray(_bubbleSort);
        break;
      case Algorithm.selection:
        _sortAndEmitArray(_selectionSort);
        break;
      case Algorithm.insertion:
        _sortAndEmitArray(_insertionSort);
        break;
      // case Algorithm.quick:
      //   _sortAndEmitArray(_quickSort);
      //   break;
      default:
        _sortAndEmitArray(_bubbleSort);
    }
  }

  void pause() {
    emit(state.copyWith(playing: false));
    _sortSubscription?.pause();
  }

  void resume() {
    emit(state.copyWith(playing: true));
    _sortSubscription?.resume();
  }

  void stop() {
    _sortSubscription?.cancel();
  }

  void updateColor(Color color) {
    emit(state.copyWith(color: color));
  }

  void updateSpeed(int speed) {
    emit(state.copyWith(speed: Duration(milliseconds: speed)));
  }

  void updateAlgorithm(Algorithm algorithm) {
    emit(state.copyWith(algorithm: algorithm));
  }

  void updateLength(double length) {
    emit(state.copyWith(length: length.round()));
    _createAndEmitRandomArray(length.round());
  }

  void updateMaxHeight(double height) {
    emit(state.copyWith(maxHeight: height));
  }

  void _createAndEmitRandomArray(int length) {
    List<Node> newArray = [];
    final random = Random();

    for (int i = 0; i < length; i++) {
      newArray.add(
        Node(
          state: false,
          value: random.nextInt(state.maxHeight.round()).toDouble(),
        ),
      );
    }

    emit(state.copyWith(array: newArray));
  }

  void _sortAndEmitArray(SortingAlgorithm sortAlgorithm) {
    emit(state.copyWith(sorting: true, playing: true));
    _sortSubscription =
        sortAlgorithm.sort(state.array, state.speed).listen((newArray) {
      emit(state.copyWith(array: []));
      emit(state.copyWith(array: newArray));
    });

    _sortSubscription?.onDone(() {
      emit(state.copyWith(sorting: false, playing: false));
    });
  }
}
