




import 'package:flutter/material.dart';

class Lesson02 extends StatelessWidget {
  const Lesson02({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Практика с ListTile"),
      ),
      body: ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 40,
            child: Center(
              child: Icon(Icons.person_outline,),
            ),
          ),
          title: Text("Элмирбек"),
          subtitle: Text("Привет"),
          trailing: Icon(Icons.add_outlined),
        ),
      ],
      ),
    );
  }
}
