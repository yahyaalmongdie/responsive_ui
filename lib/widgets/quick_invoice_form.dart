import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/custom_button.dart';
import 'package:responcive_dashboard/widgets/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                title: 'Customer name',
                hintText: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFiled(
                title: 'Customer Email',
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                title: 'Item name',
                hintText: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFiled(
                title: 'Item mount',
                hintText: "USD",
              ),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backgroundColor: Colors.transparent,
              textColor: Color(0xff4EB7F2),
            )),

                    SizedBox(
              width: 24,
            ),

            Expanded(child: CustomButton())
          ],
        )
      ],
    );
  }
}
