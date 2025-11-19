import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson1/widgets/button_widget.dart';

class Lesson07 extends StatelessWidget {
  const Lesson07({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Задача 3"
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 34,
              top: 43,
              left: 34,
              bottom: 43,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonWidget(
                  height: 40,
                  width: 260,
                  text: "Button 1",
                  textStyle: TextStyle(fontSize: 16),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8.0),
                ButtonWidget(
                  height: 40,
                  width: 260,
                  text: "Button 2",
                  textStyle: TextStyle(fontSize: 16),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8.0),
                ButtonWidget(
                  height: 40,
                  width: 260,
                  text: "Button 3",
                  textStyle: TextStyle(fontSize: 16),
                  backgroundColor: Color(0xFF006FFD),
                  foregroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8.0),
                ButtonWidget(
                  height: 62,
                  width: 307,
                  text: "FILTER",
                  backgroundColor: Color(0xFFFF7622),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 67,
                  width: 327,
                  text: "ADD TO CART",
                  backgroundColor: Color(0xFFFF7622),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 67,
                  width: 327,
                  text: "Pay & Confirm",
                  backgroundColor: Color(0xFFFF7622),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 63,
                  width: 374,
                  text: "GET STARTED",
                  backgroundColor: Color(0xFF8E97FD),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 63,
                  width: 374,
                  text: "PLAY",
                  backgroundColor: Color(0xFF8E97FD),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 63,
                  width: 374,
                  text: "PLAY",
                  backgroundColor: Color(0xFF53B175),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 63,
                  width: 374,
                  text: "Sing Up",
                  backgroundColor: Color(0xFF53B175),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 63,
                  width: 374,
                  text: "Apply Filter",
                  backgroundColor: Color(0xFF53B175),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                const SizedBox(height: 8.0,),
                ButtonWidget(
                  height: 67,
                  width: 313,
                  text: "Apply Filter",
                  backgroundColor: Color(0xFF53B175),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
