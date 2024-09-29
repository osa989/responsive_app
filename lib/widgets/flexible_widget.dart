import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Flexible(
          child: Icon(
            Icons.ac_unit,
            size: 300,
          ),
        ),
        Container(
          color: Colors.red[200],
          height: 150,
        ),
        Container(
          color: const Color.fromARGB(255, 70, 48, 40),
          height: 150,
        ),
        Container(
          color: const Color.fromARGB(255, 14, 9, 9),
          height: 150,
        ),
      ],
    );
  }
}


// flexible widget makes the child widget take the size/hieght/width 
//specified for it if there is and if not it will be flex and will be smaller 
