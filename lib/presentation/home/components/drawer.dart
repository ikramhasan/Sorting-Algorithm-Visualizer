import 'package:fluent_ui/fluent_ui.dart' as fluentUI;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:sorting_visualizer/application/sorting_cubit.dart';
import 'package:sorting_visualizer/domain/sorting_algorithm.dart';
import 'package:sorting_visualizer/presentation/home/components/title_text.dart';
import 'package:sorting_visualizer/presentation/styles/text_styles.dart';

class SettingsDrawer extends StatelessWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SortingCubit, SortingState>(
      builder: (context, state) {
        return Container(
          color: Colors.grey[850],
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const fluentUI.SizedBox(height: 16),
                const TitleText(),
                const fluentUI.SizedBox(height: 16),
                const Divider(height: 16),
                Text(
                  'Total Nodes',
                  style: settingsTextStyles,
                ),
                const fluentUI.SizedBox(height: 8),
                fluentUI.Slider(
                  min: 20,
                  max: 500,
                  mouseCursor: fluentUI.SystemMouseCursors.click,
                  value: state.length.toDouble(),
                  label: state.length.toString(),
                  onChanged: state.sorting
                      ? null
                      : (value) {
                          context.read<SortingCubit>().updateLength(value);
                        },
                ),
                const Divider(height: 16),
                fluentUI.Row(
                  mainAxisAlignment: fluentUI.MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Speed',
                      style: settingsTextStyles,
                    ),
                    fluentUI.SizedBox(
                      width: 100,
                      child: fluentUI.Combobox<int>(
                        // isExpanded: true,
                        value: state.speed.inMilliseconds,
                        items: const [
                          fluentUI.ComboboxItem(
                            value: 0,
                            child: Text('Fastest'),
                          ),
                          fluentUI.ComboboxItem(
                            value: 50,
                            child: Text('Fast'),
                          ),
                          fluentUI.ComboboxItem(
                            value: 200,
                            child: Text('Medium'),
                          ),
                          fluentUI.ComboboxItem(
                            value: 600,
                            child: Text('Slow'),
                          ),
                          fluentUI.ComboboxItem(
                            value: 1000,
                            child: Text('Slowest'),
                          ),
                        ],
                        onChanged: state.sorting
                            ? null
                            : (value) {
                                context
                                    .read<SortingCubit>()
                                    .updateSpeed(value!);
                              },
                      ),
                    ),
                  ],
                ),
                const Divider(),
                fluentUI.Row(
                  mainAxisAlignment: fluentUI.MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Algorithm',
                      style: settingsTextStyles,
                    ),
                    fluentUI.SizedBox(
                      width: 100,
                      child: fluentUI.Combobox<Algorithm>(
                        value: state.algorithm,
                        items: const [
                          fluentUI.ComboboxItem(
                            value: Algorithm.bubble,
                            child: Text('Bubble'),
                          ),
                          fluentUI.ComboboxItem(
                            value: Algorithm.selection,
                            child: Text('Selection'),
                          ),
                          fluentUI.ComboboxItem(
                            value: Algorithm.insertion,
                            child: Text('Insertion'),
                          ),
                          // fluentUI.ComboboxItem(
                          //   value: Algorithm.quick,
                          //   child: Text('Quick'),
                          // ),
                        ],
                        onChanged: state.sorting
                            ? null
                            : (value) {
                                context
                                    .read<SortingCubit>()
                                    .updateAlgorithm(value!);
                              },
                      ),
                    ),
                  ],
                ),
                const Divider(height: 16),
                fluentUI.Row(
                  children: [
                    Expanded(
                      child: fluentUI.Button(
                        onPressed: () {
                          context
                              .read<SortingCubit>()
                              .initialize(MediaQuery.of(context).size.height);
                        },
                        child: const Text('Reset board'),
                      ),
                    ),
                    const fluentUI.SizedBox(width: 8),
                    fluentUI.IconButton(
                      icon: Icon(
                        state.playing
                            ? fluentUI.FluentIcons.pause
                            : fluentUI.FluentIcons.play,
                      ),
                      onPressed: () {
                        if (state.playing) {
                          context.read<SortingCubit>().pause();
                        } else {
                          context.read<SortingCubit>().resume();
                        }
                      },
                    ),
                    // fluentUI.IconButton(
                    //   icon: const Icon(fluentUI.FluentIcons.stop),
                    //   onPressed: () {
                    //     context.read<SortingCubit>().stop();
                    //   },
                    // ),
                  ],
                ),
                const Divider(height: 16),
                const fluentUI.SizedBox(height: 16),
                NeoPopButton(
                  color: Colors.white,
                  onTapUp: () {
                    context.read<SortingCubit>().sort();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sort",
                          style: settingsTextStyles.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
