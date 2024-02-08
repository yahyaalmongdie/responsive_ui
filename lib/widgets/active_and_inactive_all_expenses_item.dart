import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/all_expenses_item_model.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';
import 'package:responcive_dashboard/widgets/all_expenses_items_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem(
      {super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xff4EB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: const Color(0xffFFFFFF),
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesItemModel.title,
              style:
                  AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xffFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
