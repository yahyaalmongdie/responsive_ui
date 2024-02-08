import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class TransactionHeaderStory extends StatelessWidget {
  const TransactionHeaderStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        Text('See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Color.fromRGBO(78, 183, 242, 1)))
      ],
    );
  }
}
