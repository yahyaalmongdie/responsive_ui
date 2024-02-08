import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (po, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: activeIndex == 0 ? 60 : 50,
              showTitle: false,
              value: 40,
              color: const Color(0xff208CC8)),
          PieChartSectionData(
              radius: activeIndex == 1 ? 60 : 50,
              showTitle: false,
              value: 25,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              radius: activeIndex == 2 ? 60 : 50,
              showTitle: false,
              value: 20,
              color: const Color(0xff064061)),
          PieChartSectionData(
              radius: activeIndex == 3 ? 60 : 50,
              showTitle: false,
              value: 22,
              color: const Color(0xffE2DECD)),
        ]);
  }
}
