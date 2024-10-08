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

void main() {
  runApp(const ResponsiveTest());
}

class ResponsiveTest extends StatelessWidget {
  const ResponsiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}

