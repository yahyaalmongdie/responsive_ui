import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/custom_background_container.dart';
import 'package:responcive_dashboard/widgets/income_chart.dart';
import 'package:responcive_dashboard/widgets/income_details.dart';
import 'package:responcive_dashboard/widgets/income_header_seaction.dart';
import 'package:responcive_dashboard/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackGroundContainer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              IncomeHeaderSection(),
              IncomeSectionBody()
            ],
          ),
        ),
      
    );
  }
}

