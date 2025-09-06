import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board_app/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_app/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board_app/widgets/dashboard_Mobile_layout.dart';
import 'package:responsive_dash_board_app/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar:
          MediaQuery.of(context).size.width < 800
              ? AppBar(
                elevation: 0,
                leading: IconButton(
                  onPressed: () => _scaffoldKey.currentState!.openDrawer(),

                  icon: Icon(Icons.menu),
                ),
                backgroundColor: Color(0xff4EB7F2),
              )
              : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: MediaQuery.of(context).size.width < 800 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobilelayout: (context) => DashBoardMobileLayout(),
        tabletlayout: (context) => DashboardTabletLayout(),
        dektoplayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
