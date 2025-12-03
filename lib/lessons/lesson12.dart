// Login

import 'package:flutter/material.dart';

class Lesson12 extends StatefulWidget {
  const Lesson12({super.key});

  @override
  State<Lesson12> createState() => _Lesson12State();
}

class _Lesson12State extends State<Lesson12> {

  bool rememberMe = false;
  bool _obsureText = true;

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
                      TextField(
                        decoration: InputDecoration(
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
                            icon: Icon(_obsureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: _obsureText ? Color(0xFFACB5BB) : Colors.black),
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
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.blue,
                              value: rememberMe, onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          }),
                          Text("Remember me"),
                          const Spacer(),
                        ],
                      )
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
