import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/size_config.dart';
import 'package:responcive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responcive_dashboard/widgets/custom_drawer.dart';
import 'package:responcive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responcive_dashboard/widgets/dashborad_layour_tablet.dart';
import 'package:responcive_dashboard/widgets/desktop_layout_widget.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width <  SizeConfig.tablet
          ? AppBar(
              leading: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(Icons.menu)),
              backgroundColor: const Color(0xffFAFAFA),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileDashboardLayout(),
        tabletLayout: (BuildContext context) => const DashBoardLayoutTablet(),
        desktopLayout: (context) => const DesktopLayoutWidget(),
      ),
    );
  }
}
