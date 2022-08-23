import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sorting_visualizer/presentation/styles/text_styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Text.rich(
        TextSpan(
          text: 'Sorting Algorithm Visualizer',
          style: settingsTextStyles.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
          children: const [
            TextSpan(
              text: '  by Ikram Hasan',
              style: TextStyle(
                fontSize: 14,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
