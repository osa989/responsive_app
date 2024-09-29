import 'dart:developer';

import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // log(constraints.maxWidth.toString());   //to specify the break points
      double deviceWidth = constraints.maxWidth;
      if (deviceWidth <= 500) {
        return const MobileLayout();
      } else {
        return const DesktopLayout();
      }
    });
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    number = index + 1;
                    setState(() {});
                  },
                  child: Container(
                    color: Colors.amberAccent,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      title: Text("${index + 1}"),
                    ),
                  ),
                );
              }),
        ),
        Expanded(child: SizedBox(child: Center(child: Text(number.toString()))))
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailsView(
                  number: index + 1,
                );
              }));
            },
            child: Container(
              color: Colors.amberAccent,
              margin: const EdgeInsets.only(bottom: 16),
              child: ListTile(
                title: Text("${index + 1}"),
              ),
            ),
          );
        });
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
