import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;
  final String price;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 270,
      width: 173.32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: BoxBorder.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 15,
          right: 15,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(imagePath)),
            const SizedBox(height: 20.36),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    productName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    productDescription,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 45.67,
                        height: 45.67,
                        decoration: BoxDecoration(
                          color: Color(0xFF53B175),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
