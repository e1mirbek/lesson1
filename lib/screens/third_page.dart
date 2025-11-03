import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.go('/second'),
            icon: Icon(Icons.arrow_back_outlined),
          ),
          title: Text("Задача 3"),
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
              children: [
                SizedBox(
                  width: 260,
                  height: 40,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text("Button 1"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
