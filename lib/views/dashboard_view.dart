import 'package:flutter/material.dart';
import 'package:responcive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responcive_dashboard/widgets/desktop_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (BuildContext context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayoutWidget(),
      ),
    );
  }
}
