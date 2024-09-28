import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/media_query.dart';

void main() {
  runApp(const ResponsiveTest());
}

class ResponsiveTest extends StatelessWidget {
  const ResponsiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MediaQueryTest(), 
      ),
    );
  }
}
