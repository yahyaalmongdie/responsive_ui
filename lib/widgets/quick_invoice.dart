import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';
import 'package:responcive_dashboard/widgets/custom_background_container.dart';
import 'package:responcive_dashboard/widgets/custom_text_filed.dart';
import 'package:responcive_dashboard/widgets/latest_transaction.dart';
import 'package:responcive_dashboard/widgets/quick_invoce_header.dart';
import 'package:responcive_dashboard/widgets/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 24,
            ),
            LatestTransaction(),
                Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
        
        QuickInvoiceForm(),
          ],
        ),
      ),
    );
  }
}

