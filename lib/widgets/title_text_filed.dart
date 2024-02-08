import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';
import 'package:responcive_dashboard/widgets/custom_text_filed.dart';

class TitleTextFiled extends StatelessWidget {
  const TitleTextFiled({super.key, required this.title, required this.hintText});
final String title,hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Text(
    title,
    style: AppStyles.styleMedium16(context)
)
,

const SizedBox(height: 12,),
CustomTextForm(hintText: hintText,),
      ],
    );
  }
}