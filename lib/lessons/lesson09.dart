





import 'package:flutter/material.dart';
import 'package:lesson1/widgets/container_register_widget.dart';

class Lesson09 extends StatelessWidget {
  const Lesson09({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lesson 9"),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(347, 48),
                            backgroundColor: Color(0xFF0063F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text("Update Market", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(207, 45),
                                backgroundColor: Color(0xFFE95322),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(46.05),
                                )
                            ),
                            child: Center(
                              child: Text("Sign Up", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 28,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContainerRegisterWidget(imagePath: "assets/images/gmail_icon.png"),
                          const SizedBox(width: 9,),
                          ContainerRegisterWidget(imagePath: "assets/images/facebook_icon.png"),
                          const SizedBox(width: 9,),
                          ContainerRegisterWidget(imagePath: "assets/images/mark_icon.png")
                        ],
                      ),
                      const SizedBox(height: 34,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF9775FA),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/voice_icon.png", width: 24, height: 24, color: Colors.white,),
                        ),
                      ),
                      const SizedBox(height: 36,),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(170, 70),
                                backgroundColor: Color(0xFF3C2F2F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )
                              ),
                              child: Center(
                            child: Row(
                              children: [
                                Text("Edit Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)),),
                                const SizedBox(width: 16,),
                                Image.asset("assets/images/edit_icon.png", width: 24, height: 24,),
                              ],
                            ),
                          ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(170, 70),
                              backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              side: BorderSide(
                                color: Color(0xFF0FFEF2A39),
                                width: 3,
                              )
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Text("Log out", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFEF2A39)),),
                                  const SizedBox(width: 16,),
                                  Image.asset("assets/images/sign_out_icon.png", width: 24, height: 24,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/currency_rupee_icon.png", width: 9.58, height: 12,),
                                  const SizedBox(width: 3,),
                                  Text("7,000.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                ],
                              ),
                              Text("View Details", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFFF83758)),),
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(219, 48),
                                backgroundColor: Color(0xFFF83758),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                )
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text("Proceed to Payment", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
          ),
      ),
    );
  }
}
