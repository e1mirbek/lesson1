// Login

import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson1/widgets/button_widget.dart';

class Lesson12 extends StatefulWidget {
  const Lesson12({super.key});

  @override
  State<Lesson12> createState() => _Lesson12State();
}

class _Lesson12State extends State<Lesson12> {


  bool rememberMe = false;
  bool _obsureText = true;


  final emailRegExp = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w+$");

  String? errorText;

  void validateEmail(String value) {
    setState(() {
      if (value.isEmpty) {
        errorText = "Введите email";
      } else if (!emailRegExp.hasMatch(value)) {
        errorText = "Неверный email";
      } else {
        errorText = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", width: 121, height: 22),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2567E8), Color(0xFF1CE6DA)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: width * 0.90,
                // height: height * 0.70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Color(0xFF111827),
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF6C7278),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFF4D81E7),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Email",
                        style: TextStyle(
                          color: Color(0xFF6C7278),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      // Gmail
                      TextField(
                        onChanged: (value) => validateEmail(value),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[a-zA-Z0-9@._-]"),
                          ),
                        ],
                        decoration: InputDecoration(
                          errorText: errorText,
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xFFEDF1F3)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFEDF1F3)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Password",
                        style: TextStyle(
                          color: Color(0xFF6C7278),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      TextField(
                        obscureText: _obsureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obsureText = !_obsureText;
                              });
                            },
                            icon: Icon(
                              _obsureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: _obsureText
                                  ? Color(0xFFACB5BB)
                                  : Colors.black,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xFFEDF1F3)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFEDF1F3)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.blue,
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                          ),
                          Text("Remember me"),
                          const Spacer(),
                        ],
                      ),
                      ButtonWidget(
                        text: "Log in",
                        backgroundColor: Color(0xFF1D61E7),
                        foregroundColor: Colors.white,
                        height: 48,
                        width: width,
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        // onPressed: (value) => validateEmail(value);
                        onPressed: () {

                        },
                      ),
                      const SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(child: Divider(thickness: 1)),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: const Text("Or"),
                          ),
                          Expanded(child: Divider(thickness: 1)),
                        ],
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF),
                          minimumSize: Size(width, 48),
                          side: BorderSide(color: Color(0xFFEFF0F6)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF),
                          minimumSize: Size(width, 48),
                          side: BorderSide(color: Color(0xFFEFF0F6)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/facebook.png",
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
