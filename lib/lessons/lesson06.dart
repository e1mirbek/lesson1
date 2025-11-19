import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Lesson06 extends StatelessWidget {
  const Lesson06({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Задача 2"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 33,
                right: 29,
                left: 29,
                bottom: 33,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/images/1.png")),
                  const SizedBox(height: 20),
                  Image(image: AssetImage("assets/images/2.png")),
                  const SizedBox(height: 65),
                  Image(image: AssetImage("assets/images/3.png")),
                  Image(image: AssetImage("assets/images/4.png")),
                  const SizedBox(height: 65),
                  Image(image: AssetImage("assets/images/5.png")),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage("assets/images/6.png")),
                      Image(image: AssetImage("assets/images/6.png")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


