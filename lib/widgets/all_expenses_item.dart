import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/all_expenses_item_model.dart';
import 'package:responcive_dashboard/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return  isSelected!=true? InActiveAllExpensesItem(
      allExpensesItemModel: allExpensesItemModel,
    ): ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel ,);
  }
}
