import 'package:flutter/material.dart';
import 'package:sorting_visualizer/application/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sorting_visualizer/presentation/sorting_app.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const SortingApp());
}
