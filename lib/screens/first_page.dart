import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Задача 1"),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => context.go('/second'),
              icon: Icon(Icons.arrow_forward_outlined),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 14.9),
                Text(
                  "Enter your credentials to",
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF7C7C7C)),
                ),
                Text(
                  "continue",
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF7C7C7C)),
                ),
                const SizedBox(height: 23.64),
                Text(
                  "Loging",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 14.9),
                Text(
                  "Enter your emails and password",
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF7C7C7C)),
                ),
                const SizedBox(height: 38.74),
                Text(
                  "Create your account ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 45.69),
                Text(
                  "What Brings you",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text("to Silent Moon?", style: TextStyle(fontSize: 28)),
                const SizedBox(height: 91.38),
                Text(
                  "Find Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 56.60),
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text("Noodles & Pasta", style: TextStyle(fontSize: 16)),
                Text("Chips & Crisps", style: TextStyle(fontSize: 16)),
                Text("Fast Food", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

