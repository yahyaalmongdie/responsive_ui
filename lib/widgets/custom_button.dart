import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
  });
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text('Send Money',
              style: AppStyles.styleSemiBold18(context).copyWith(
                color: textColor ?? const Color(0xFFFFFFFF),
              ))),
    );
  }
}
