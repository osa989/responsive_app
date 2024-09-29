import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/expanded_widget.dart';
import 'package:responsive_app/widgets/layout_builder.dart';
import 'package:responsive_app/widgets/media_query.dart';

void main() {
  runApp(const ResponsiveTest());
}

class ResponsiveTest extends StatelessWidget {
  const ResponsiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: const ExpandedWidget(),
      ),
    );
  }
}
// MediaQueryTest
// LayoutBuilderExample
// ExpandedWidget