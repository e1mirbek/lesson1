




import 'package:flutter/material.dart';



List <String> iconPath = [
  "assets/images/history_icon.png",
  "assets/images/bank_details_icon.png",
  "assets/images/notifications_icon.png",
  "assets/images/security_icon.png",
  "assets/images/help_icon.png",
  "assets/images/terms_icon.png",
];

List <String> titles = [
  "History",
  "Bank Details",
  "Notifications",
  "Security",
  "Help and Support",
  "Terms and Conditions",
];

class Lesson10 extends StatelessWidget {
  const Lesson10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: 343,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0063F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile.jpg",),
                        radius: 80,
                      ),
                      const SizedBox(height: 12,),
                      Text("Agilan Senthil", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                      const SizedBox(height: 8,),
                      Text("agilansenthilkumar@gmail.com", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),),
                      const SizedBox(height: 4,),
                      Text("+91 9444977118", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Expanded(
                child: ListView(
                  children: [
                    // 1. генерируем список
                       ...List.generate(
                           iconPath.length,
                           (index) => Column(
                             children: [
                             ListTile(
                                     leading: Image.asset(iconPath[index], width: 23.27, height: 24,),
                                     title: Text(titles[index],  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF343A40)),),
                                     trailing: Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFF6C757D,), size: 15,),
                                   ),
                               Divider(),
                             ],
                           ),
                       ),
                    const SizedBox(height: 24,),

                    // 2. Элемент Logout в конце
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                              children: [
                                Image.asset("assets/images/logout_account_icon.png", width: 24, height: 24,),
                                const SizedBox(width: 15 ,),
                                Text("Logout", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF343A40)),)
                              ],
                            ),
                  ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
