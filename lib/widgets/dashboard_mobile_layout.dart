import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responcive_dashboard/widgets/income_section.dart';
import 'package:responcive_dashboard/widgets/my_card_transaction_history_section.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:  Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
