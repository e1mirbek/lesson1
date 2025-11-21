




import 'package:flutter/material.dart';
import 'package:lesson1/widgets/elevated_button_accout_widget.dart';

class Lesson08 extends StatelessWidget {
  const Lesson08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lesson 8"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(343, 48),
                backgroundColor: Color(0xFF0063F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                )
              ),
                onPressed: () {},
                child: Center(
                  child: Text("Preview Sell", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),),
                ),
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(140.58, 40),
                      backgroundColor: Color(0xFFFFDECF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(46.05),
                      )
                    ),
                    child: Center(
                      child: Text("Filter Button", style: TextStyle(fontSize: 20.6, fontWeight: FontWeight.w500, color: Color(0xFFE95322)),
                      ),
                    ),
                ),
                const SizedBox(width: 14.82,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(140.58, 40),
                    backgroundColor: Color(0xFFE95322),
                  ),
                  child: Center(
                    child: Text("Track Order", style: TextStyle(fontSize: 20.6, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 47.07,),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              Row(
                children: [
                  Image.asset("assets/images/n.png", width: 20, height: 16,),
                  const SizedBox(width: 5,),
                  Text("60,000", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                ],
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(199, 56),
                    backgroundColor: Color(0xFFFFA451),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  child: Center(
                    child: Text("Checkout", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)),),)),
        ],
      ),
            const SizedBox(height: 121,),
           Row(
             children: [
               ElevatedButtonAccoutWidget(imagePath: "assets/images/google.png"),
               ElevatedButtonAccoutWidget(imagePath: "assets/images/apple.png"),
               ElevatedButtonAccoutWidget(imagePath: "assets/images/facebook.png"),
             ],
           ),
            const SizedBox(height: 53,),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(169, 36),
                    backgroundColor: Color(0xFF00D09E),
                  ),
                  child: Center(
                    child: Text("Add Expenses", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
                ),
        ),
      ),
    );
  }
}
