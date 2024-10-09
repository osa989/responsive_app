import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});

  final Widget mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // print("Media query width : ${MediaQuery.sizeOf(context).width}");
      // print("layout builder width width : ${constraints.maxWidth}");
      if (constraints.maxWidth < 600) {
        return  mobileLayout;
      } else if (constraints.maxWidth < 900) {
        return  tabletLayout;
      } else {
        return  desktopLayout;
      }
    });
  }
}
