import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';
import 'package:responsive_app/views/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [CustomDrawer(), Expanded(child: TabletLayout(),),],
    );
  }
}
