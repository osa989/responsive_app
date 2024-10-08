import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_app/views/widgets/custom_list_tablet.dart';
import 'package:responsive_app/views/widgets/custom_sliver_grid.dart';
import 'package:responsive_app/views/widgets/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return const CustomListTablet();
              } else {
                return const CustomSliverGrid();
              }
            }),
          ),
          const CustomSliverListView(),
        ],
      ),
    );
  }
}
