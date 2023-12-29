import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/custom_drawer.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: CustomDrawer())
    ],);
  }
}