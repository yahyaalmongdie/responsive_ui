import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responcive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
     DevicePreview(
        enabled: true,
        builder: (context) => const DashBoardResponsive (), // Wrap your app
      ),
);
}

class DashBoardResponsive extends StatelessWidget {
  const DashBoardResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
debugShowCheckedModeBanner: false,
home:const  DashBoardView(),
    );
  }
}

