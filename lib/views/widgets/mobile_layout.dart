import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_sliver_grid.dart';
import 'package:responsive_app/views/widgets/custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
   MobileLayout({
    super.key,
  }){
    print("mobile layout ");
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomSliverGrid(),
        CustomSliverListView(),
      ],
    );
  }
}
