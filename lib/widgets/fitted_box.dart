import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Flexible(
          child: FittedBox(
            child: Icon(
              Icons.ac_unit,
              size: 300,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red[200],
            height: 150,
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Icon(
                Icons.abc_sharp,
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 70, 48, 40),
          height: 150,
        ),
      ],
    );
  }
}
// to use fitted box you should have a specified size to fit in 
//fitted box make the child fitted into the parent 
//and flexible tell the child the size of it 
// it will reach the specified size and stop and otherwise if
//if there is no space it will be smaller 