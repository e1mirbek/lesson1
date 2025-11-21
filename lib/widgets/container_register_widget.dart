




import 'package:flutter/material.dart';

class ContainerRegisterWidget extends StatelessWidget {
  final String imagePath;
  const ContainerRegisterWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return      Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        color: Color(0xFFFFDECF),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: Image.asset(imagePath, width: 18, height: 18,),
      ),
    );
  }
}
