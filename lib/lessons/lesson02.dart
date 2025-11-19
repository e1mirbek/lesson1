


// практика с List Tile

import 'package:flutter/material.dart';
import 'package:lesson1/widgets/button_widget.dart';

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
        Divider(),
        ListTile(
          leading: CircleAvatar(
            radius: 40,
            child: Center(
              child: Icon(Icons.person_outline,),
            ),
          ),
          title: Text("Элмирбек"),
          subtitle: Text("Junior Flutter developer"),
          trailing: Icon(Icons.person_outline),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            radius: 40,
            child: Center(
              child: Icon(Icons.person_outline,),
            ),
          ),
          title: Text("Баястан"),
          subtitle: Text(" Middle Flutter developer"),
          trailing: Icon(Icons.person_outline),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            radius: 40,
            child: Center(
              child: Icon(Icons.person_outline,),
            ),
          ),
          title: Text("Кайрат"),
          subtitle: Text("Senior Java developer"),
          trailing: Icon(Icons.person_outline),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ButtonWidget(text: "Добавить", backgroundColor: Colors.blue, foregroundColor: Colors.white, height: 70, width: 100, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700), borderRadius: BorderRadius.circular(20)),
        )
      ],
      ),
    );
  }
}
