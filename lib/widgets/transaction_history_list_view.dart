import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/transaction_model.dart';
import 'package:responcive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const item = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdrawal: true),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM ",
        amount: r"$2,000",
        isWithdrawal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM ",
        amount: r"$2,000",
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:item.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    return ListView.builder(
      itemCount: item.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: item[index]);
      },
    );
  }
}
