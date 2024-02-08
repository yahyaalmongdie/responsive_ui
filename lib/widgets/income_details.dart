import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/income_details_model.dart';
import 'package:responcive_dashboard/widgets/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const item = [
    IncomeDetailsModel(
      title: "Design service",
      value: "40%",
      color: Color(0xFF208BC7),
    ),
    IncomeDetailsModel(
      title: "Design product",
      value: "25%",
      color: Color(0xFF4DB7F2),
    ),
    IncomeDetailsModel(
      title: "Product royalti",
      value: "20%",
      color: Color(0xFF064060),
    ),
    IncomeDetailsModel(
      title: "Other",
      value: "22%",
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:item.map((e) => ItemDetails(incomeDetailsModel: e,) ).toList(),);

    ListView.builder(
      shrinkWrap: true,
      itemCount: item.length,
      itemBuilder: (context, index) {
        return ItemDetails(incomeDetailsModel: item[index]);
      },
    );
  }
}
