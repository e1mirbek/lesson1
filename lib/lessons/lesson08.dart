




import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(15.0),
          child: Column(
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
          ],
                ),
        ),
      ),
    );
  }
}
