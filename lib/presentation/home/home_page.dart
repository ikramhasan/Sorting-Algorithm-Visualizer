import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sorting_visualizer/domain/node.dart';
import 'package:sorting_visualizer/presentation/home/components/drawer.dart';
import 'package:sorting_visualizer/application/sorting_cubit.dart';
import 'package:sorting_visualizer/presentation/home/components/title_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 850;
    final cubit = BlocProvider.of<SortingCubit>(context);
    cubit.initialize(height);
    return BlocBuilder<SortingCubit, SortingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[830],
          drawer: isMobile
              ? const Drawer(
                  child: SettingsDrawer(),
                )
              : const SizedBox.shrink(),
          appBar: isMobile
              ? AppBar(
                  title: const TitleText(),
                )
              : const PreferredSize(
                  preferredSize: Size(0, 0),
                  child: SizedBox.shrink(),
                ),
          body: Row(
            children: [
              isMobile
                  ? const SizedBox.shrink()
                  : const Expanded(
                      flex: 1,
                      child: SettingsDrawer(),
                    ),
              Expanded(
                flex: 3,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      for (Node node in state.array)
                        Flexible(
                          child: Container(
                            color: _getNodeColor(node.state),
                            height: node.value,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Color _getNodeColor(NodeState state) {
  switch (state) {
    case NodeState.idle:
      return Colors.white;
    case NodeState.checking:
      return Colors.red;
    case NodeState.sorted:
      return Colors.green;
    default:
      return Colors.white;
  }
}
