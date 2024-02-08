import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';
import 'package:responcive_dashboard/widgets/transaction_header_story.dart';
import 'package:responcive_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const  TransactionHeaderStory(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Color(0xffAAAAAA))),

              const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}
