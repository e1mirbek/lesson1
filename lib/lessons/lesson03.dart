


import 'package:flutter/material.dart';

 final List <String> images = [
   "assets/images/vector1.png",
   "assets/images/vector2.png",
   "assets/images/vector3.png",
   "assets/images/vectornew4.png",
   "assets/images/group2.png",
   "assets/images/vector4.png",
   "assets/images/vector5.png",
   "assets/images/vector6.png",
   "assets/images/group390.png",

 ];

 final List <String> titles = [
   "Food",
   "Transport",
   "Medicine",
   "Groceries",
   "Rent",
   "Gifts",
   "Savings",
   "Entertainment",
   "More",
 ];

class Lesson03 extends StatefulWidget {
  const Lesson03({super.key});

  @override
  State<Lesson03> createState() => _Lesson03State();
}

class _Lesson03State extends State<Lesson03> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 29, right: 29, top: 8),
          child: GridView.builder(
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 46,
              crossAxisSpacing: 21,
              childAspectRatio: 0.8, // чем меньше — тем больше высота ячейки
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 105,
                      height: 97.63,
                      decoration: BoxDecoration(
                        color: _selectedIndex == index ? Color(0xFF0068FF) : Color(0xFF6DB6FE),
                        borderRadius: BorderRadius.circular(25.79),
                      ),
                      child: Center(child: Image.asset(images[index], width: 30, height: 54,),),
                    ),
                  ),
                  const SizedBox(height: 2.37,),
                  Text(titles[index]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
