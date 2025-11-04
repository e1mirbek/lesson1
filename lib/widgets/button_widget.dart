import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadius borderRadius;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.height,
    required this.width,
    required this.textStyle, required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius, // Скругленные углы
          ),
          elevation: 0, // Без тени
        ),
        onPressed: () {},
        child: Center(child: Text(text, style: textStyle)),
      ),
    );
  }
}


