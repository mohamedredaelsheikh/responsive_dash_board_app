import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IcomeChart extends StatefulWidget {
  const IcomeChart({super.key});

  @override
  State<IcomeChart> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IcomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,

      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xFF208CC8),
          radius: activeIndex == 0 ? 60 : 50,

          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          showTitle: false,
          radius: activeIndex == 1 ? 60 : 50,

          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          value: 20,
          showTitle: false,
          radius: activeIndex == 2 ? 60 : 50,
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          value: 22,
          showTitle: false,
          radius: activeIndex == 3 ? 60 : 50,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
