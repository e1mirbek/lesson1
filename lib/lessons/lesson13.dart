import 'package:flutter/material.dart';

// Переменные

// Примитивные типы данных

// String

// bool

// int

class Lesson13 extends StatefulWidget {
  const Lesson13({super.key});

  @override
  State<Lesson13> createState() => _Lesson13State();
}

class _Lesson13State extends State<Lesson13> {
  String name = "Elmirbek";
  String profession = "Flutter developer";

  int age = 20;

  double kg = 75.20;

  double km = 54.89;

  // Flutter типы данных

  Color green = Colors.green;
  Color red = Colors.red;

  IconData favorite = Icons.favorite_outline;
  IconData person = Icons.person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("13 Урок")),
      body: SafeArea(child: Column(children: [
        Text(name)
      ])),
    );
  }
}
