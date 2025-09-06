import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_app/widgets/dashboard_Mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
