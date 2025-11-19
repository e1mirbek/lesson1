




import 'package:flutter/material.dart';

class ExampleContainerWidget extends StatelessWidget {
  final Color color;
  final String text;
  const ExampleContainerWidget({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),),
      ),
    );
  }
}
