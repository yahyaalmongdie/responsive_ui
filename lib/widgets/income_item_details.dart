import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/income_details_model.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    // on solution but is't stable
    // return Padding(
    //   padding: const EdgeInsets.only(left: 8),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: incomeDetailsModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(incomeDetailsModel.title, style: AppStyles.styleRegular16),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(incomeDetailsModel.value, style: AppStyles.styleMedium16),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(incomeDetailsModel.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(incomeDetailsModel.value, style: AppStyles.styleMedium16(context)),
    );
  }
}
