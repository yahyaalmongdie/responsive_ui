import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/size_config.dart';
import 'package:responcive_dashboard/widgets/detailed_incom_chart.dart';
import 'package:responcive_dashboard/widgets/income_chart.dart';
import 'package:responcive_dashboard/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width <= 1750
        ? const Padding(
          padding:  EdgeInsets.all(16),
          child:  DetailedIncomeChart(),
        )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
