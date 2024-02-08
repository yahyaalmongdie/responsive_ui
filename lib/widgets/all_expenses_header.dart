import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';
import 'package:responcive_dashboard/widgets/range_options.dart';

class AllExpensesHeder extends StatelessWidget {
  const AllExpensesHeder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        const Spacer(),
       const  RangeOptions(),
      ],
    );
  }
}
