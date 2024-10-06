import 'package:flutter/material.dart';

class SimpleDesign extends StatelessWidget {
  const SimpleDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 233, 227, 227),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        );
      },
    );
  }
}
