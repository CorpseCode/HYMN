import 'package:flutter/material.dart';

class BorderText extends StatelessWidget {
  Color borderColor ;
  Color fillColor ;
  String text;
  double fontSize;

  BorderText({
    required this.borderColor,
    required this.fillColor,
    required this.text,
    required this.fontSize,
});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = borderColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: fillColor,
          ),
        ),
      ],
    );
  }
}
