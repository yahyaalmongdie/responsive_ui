import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
          filled: true,
          fillColor: const Color(0xffFAFAFA),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xffFAFAFA)));
}
