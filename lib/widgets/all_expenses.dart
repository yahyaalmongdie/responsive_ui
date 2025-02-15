import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/all_expenses_header.dart';
import 'package:responcive_dashboard/widgets/all_expenses_item_list_view.dart';
import 'package:responcive_dashboard/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeder(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
