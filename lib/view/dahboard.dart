import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_dasktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DashboardDesktopLayout()),
    );
  }
}
