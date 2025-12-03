




import 'package:flutter/material.dart';

class Lesson11 extends StatefulWidget {
  const Lesson11({super.key});

  @override
  State<Lesson11> createState() => _Lesson11State();
}

class _Lesson11State extends State<Lesson11> {

  String? selectedCountry;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Center(
        child: DropdownButton(
          value: selectedCountry,
          items: [
            DropdownMenuItem(value: "A", child: Text("Option A")),
            DropdownMenuItem(value: "B", child: Text("Option B")),
            DropdownMenuItem(value: "C", child: Text("Option C")),
          ],
          onChanged: (value) {
            setState(() {
              selectedCountry = value;
            });
          },
        ),
      )),
    );
  }
}
