import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/user_info_model.dart';
import 'package:responcive_dashboard/utils/app_images.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';
import 'package:responcive_dashboard/widgets/latest_transaction_list.dart';
import 'package:responcive_dashboard/widgets/user_info_listtile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
       const SizedBox(
          height: 12,
        ),
       const LatestTransactionList(),

      ],
    );
  }
}
