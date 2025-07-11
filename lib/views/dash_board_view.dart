import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board_app/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobilelayout: (context) => SizedBox(),
        tabletlayout: (context) => SizedBox(),
        dektoplayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
