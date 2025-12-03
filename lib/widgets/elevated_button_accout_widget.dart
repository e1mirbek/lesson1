




import 'package:flutter/material.dart';

class ElevatedButtonAccoutWidget extends StatelessWidget {
  final String imagePath;
  const ElevatedButtonAccoutWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFCF3F6),
          minimumSize: Size(54, 54),
          shape: CircleBorder(),
          side: BorderSide(
            color: Color(0xFFF83758),
            width: 1.5,
          )
      ),
      child: Center(
        child: Image.asset(imagePath, width: 24, height: 24,),
      ),
    );
  }
}
