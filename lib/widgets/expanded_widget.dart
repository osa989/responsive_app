import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red[200],
            // height: 150,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: const Color.fromARGB(255, 70, 48, 40),
            // height: 150,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: const Color.fromARGB(255, 14, 9, 9),
            // height: 150,
          ),
        ),
      ],
    );
  }
}


// flex attribute specifies the expanded widgets size between each other 
// expanded widget can be used inside any flexible widget like column and row 
