import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/custom_background_container.dart';
import 'package:responcive_dashboard/widgets/my_cards_section.dart';
import 'package:responcive_dashboard/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(

      child:  Column(
        children: [
          MyCardSection(),
          Divider(height: 40,
          color: Color(0xffF1F1F1),
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}