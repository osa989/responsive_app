// import 'package:responsive_app/widgets/adaptive_app.dart';
// import 'package:responsive_app/widgets/aspect_ratio.dart';
// import 'package:responsive_app/widgets/expanded_widget.dart';
// import 'package:responsive_app/widgets/fitted_box.dart';
// import 'package:responsive_app/widgets/flexible_widget.dart';
// import 'package:responsive_app/widgets/intrinsic_widgets.dart';
// import 'package:responsive_app/widgets/layout_builder.dart';
// import 'package:responsive_app/widgets/media_query.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/views/home_view.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';

void main() {
  runApp(const ResponsiveTest());
}

class ResponsiveTest extends StatefulWidget {
  const ResponsiveTest({super.key});

  @override
  State<ResponsiveTest> createState() => _ResponsiveTestState();
}

class _ResponsiveTestState extends State<ResponsiveTest> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: const Color(0xffDBDBDB),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        body: const HomeView(),
      ),
    );
  }
}
// MediaQueryTest
// LayoutBuilderExample
// ExpandedWidget
// FlexibleWidget
// FittedBoxWidget
//AspectRatioExample
//IntrinsicWidgets
//HomeView