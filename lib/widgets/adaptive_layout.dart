import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobilelayout,
    required this.tabletlayout,
    required this.dektoplayout,
  });

  final WidgetBuilder mobilelayout, tabletlayout, dektoplayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobilelayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletlayout(context);
        } else {
          return dektoplayout(context);
        }
      },
    );
  }
}
