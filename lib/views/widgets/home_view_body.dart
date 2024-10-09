import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/adaptive_layout.dart';
import 'package:responsive_app/views/widgets/desktop_layout.dart';
import 'package:responsive_app/views/widgets/mobile_layout.dart';
import 'package:responsive_app/views/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constraints) {
        // print("Media query width : ${MediaQuery.sizeOf(context).width}");
        // print("layout builder width width : ${constraints.maxWidth}");
        return AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        );
      }),
    );
  }
}
