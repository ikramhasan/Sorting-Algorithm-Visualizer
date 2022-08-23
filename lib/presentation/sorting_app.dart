import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sorting_visualizer/application/sorting_cubit.dart';
import 'package:sorting_visualizer/presentation/home/home_page.dart';

class SortingApp extends StatelessWidget {
  const SortingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SortingCubit>(
      create: (context) => SortingCubit(),
      child: FluentApp(
        debugShowCheckedModeBanner: false,
        title: 'Sorting Visualizer by Ikram Hasan',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.slabo13px().fontFamily,
        ),
        home: const HomePage(),
      ),
    );
  }
}
