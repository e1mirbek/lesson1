

// практика с Grid View и тернарный оператором


import 'package:flutter/material.dart';
import 'package:lesson1/widgets/example_container_widget.dart';




List <String> texts = [
  "Text 1",
  "Text 2",
  "Text 3",
  "Text 4",
  "Text 5",
  "Text 6",
  "Text 7",
  "Text 8",
  "Text 9",
  "Text 10",
];



class Lesson01 extends StatefulWidget {
  const Lesson01({super.key});

  @override
  State<Lesson01> createState() => _Lesson01State();
}

class _Lesson01State extends State<Lesson01> {

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Практика Grid View"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ), itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child:
                ExampleContainerWidget(
                    color: selectedIndex == index ? Colors.red : Colors.blue, text: texts[index],
                ),
              );
            }
            )
          ),
      ),
    );
  }
}
