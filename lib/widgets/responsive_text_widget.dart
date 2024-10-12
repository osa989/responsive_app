import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "hello world ",
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
      ),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  print(
    "base font size : $fontSize , lower limit : $lowerLimit , upper limit : $upperLimit , responsive fontsize : $responsiveFontSize , final font size ${responsiveFontSize.clamp(lowerLimit, upperLimit)},",
  );

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
