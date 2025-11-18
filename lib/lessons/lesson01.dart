




import 'package:flutter/material.dart';

class Lesson01 extends StatefulWidget {
  const Lesson01({super.key});

  @override
  State<Lesson01> createState() => _Lesson01State();
}

class _Lesson01State extends State<Lesson01> {

  int selectedIndex = -1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Практика flutter"),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ), itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: selectedIndex == index ? Colors.red : Colors.blue,
                ),
              );
            }
            )
          ),
      ),
    );
  }
}
