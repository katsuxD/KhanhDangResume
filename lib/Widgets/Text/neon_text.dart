import 'package:flutter/material.dart';
import 'package:katsu_resume/constraints/utils.dart';

class NeonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final Color strokeColor;
  final double strokeWidth;
  final Color shadowColor;

  const NeonText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.strokeColor,
    required this.strokeWidth,
    required this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Drop shadow
        Transform.translate(
          offset: const Offset(0, 0),
          child: Text(
            text,
            style: TextStyle(
              color: shadowColor.withOpacity(0.5),
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Stroke
        Text(
          text,
          style: TextStyle(
            shadows: [
              Shadow(
                color: strokeColor,
                offset: const Offset(0, 0),
                blurRadius: 15,
              ),
            ],
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Text mask
        ShaderMask(
          shaderCallback: (bounds) =>  LinearGradient(
            colors: [textColor, textColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.repeated,
          ).createShader(bounds),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
