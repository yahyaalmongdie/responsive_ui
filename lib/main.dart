import 'package:flutter/material.dart';
import 'package:responcive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const DashBoardResponsive());
}

class DashBoardResponsive extends StatelessWidget {
  const DashBoardResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

debugShowCheckedModeBanner: false,
home: DashBoardView(),
    );
  }
}