import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          color: Colors.red,
          width: MediaQuery.sizeOf(context).width,
        ),
      ),
    );
  }
}
