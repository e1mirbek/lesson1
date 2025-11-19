import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson1/widgets/product_card.dart';

class Lesson05 extends StatelessWidget {
  const Lesson05({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Задача 4",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductCard(
                    productName: "Diet Coke",
                    productDescription: "355ml, Price",
                    price: "\$1.99",
                    imagePath: "assets/images/a1.png",
                  ),
                  ProductCard(
                    productName: "Sprite Can",
                    productDescription: "325ml, Price",
                    price: "\$1.50",
                    imagePath: "assets/images/a2.png",
                  ),
                ],
              ),
              const SizedBox(height: 15.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductCard(
                    productName: "Apple & Grape Juice",
                    productDescription: "325ml, Price",
                    price: "\$15.99",
                    imagePath: "assets/images/a3.png",
                  ),
                  ProductCard(
                    productName: "Orenge Juice",
                    productDescription: "2L, Price",
                    price: "\$15.99",
                    imagePath: "assets/images/a4.png",
                  ),
                ],
              ),
              const SizedBox(height: 15.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductCard(
                    productName: "Coca Cola Can",
                    productDescription: "325ml, Price",
                    price: "\$4.99",
                    imagePath: "assets/images/a5.png",
                  ),
                  ProductCard(
                    productName: "Pepsi Can",
                    productDescription: "330ml, Price",
                    price: "\$4.99",
                    imagePath: "assets/images/a6.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
