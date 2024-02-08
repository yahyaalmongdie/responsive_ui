import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
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
              radius: activeIndex == 0 ? 55 : 50,
              showTitle: true,
              value: 40,
              titlePositionPercentageOffset:activeIndex == 0 ? 1.5:null,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 0 ? null : Colors.white),
              title: activeIndex == 0 ? "Design service" : "40%",
              color: const Color(0xff208CC8)),
          PieChartSectionData(
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 1 ? null : Colors.white),
              radius: activeIndex == 1 ? 55 : 50,
              showTitle: true,
              title: activeIndex == 1 ? "Design product" : "25%",
              titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,

              // title: "",
              value: 25,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 2 ? null : Colors.white),
              radius: activeIndex == 2 ? 55 : 50,
              showTitle: true,
              title: activeIndex == 2 ? "Product royalti" : "20%",
              value: 20,
              color: const Color(0xff064061)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 3? 1.4: null,
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 3 ? null : Colors.white),

              // title:"Other" ,
              radius: activeIndex == 3 ? 55 : 50,
              showTitle: true,
              value: 22,
              title: activeIndex == 3 ? "Other" : "22%",
              color: const Color(0xffE2DECD)),
        ]);
  }
}
