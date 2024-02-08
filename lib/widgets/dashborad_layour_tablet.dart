import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responcive_dashboard/widgets/custom_drawer.dart';
import 'package:responcive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responcive_dashboard/widgets/income_section.dart';
import 'package:responcive_dashboard/widgets/my_card_transaction_history_section.dart';

class DashBoardLayoutTablet extends StatelessWidget {
  const DashBoardLayoutTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: MobileDashboardLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
