import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/transaction_model.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(transactionModel.date, style: AppStyles.styleRegular16(context)
                .copyWith(
          color:const  Color(0xffAAAAAA)
        )),
        trailing: Text(transactionModel.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B))),
      ),
    );
  }
}
