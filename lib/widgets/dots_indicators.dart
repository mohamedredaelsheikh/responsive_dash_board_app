import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndicator(isActive: index == currentPage),
        ),
      ),
    );
  }
}
