// import 'dart:developer';

import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // log(height.toString());
    return Column(
      children: [
        Container(
          color: Colors.red[200],
          height: height * 0.3,
          width: width * 0.5,
        ),
        Container(
          color: const Color.fromARGB(255, 70, 48, 40),
          height: height * 0.3,
          width: width * 0.5,
        ),
        Container(
          color: const Color.fromARGB(255, 14, 9, 9),
          height: height * 0.3,
          width: width * 0.5,
        ),
      ],
    );
  }
}
