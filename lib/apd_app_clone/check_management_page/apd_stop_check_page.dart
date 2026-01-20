import 'package:flutter/material.dart';

import '../home_page/apd_homepage_classic.dart';

class ApdStopCheckPage extends StatefulWidget {
  const ApdStopCheckPage({super.key});

  @override
  State<ApdStopCheckPage> createState() => _ApdStopCheckPageState();
}

class _ApdStopCheckPageState extends State<ApdStopCheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              SizedBox(height: 70),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("Images/apd_image/vector.jpg"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Check Inquiry", style: TextStyle(color: Colors.blue, fontSize: 30)),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("APD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.grey)),
                          Text("BANK", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("From Account", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                            Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF3891C7),
              Color(0xFF3891C7),
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute( builder: (context) => ApdHomePageClassic()));
                },
                child: Image.asset(
                  "Images/menu_icon/home_icon.jpg",
                  height: 30,
                  width: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute( builder: (context) => const ApdHomePageClassic()));
                },
                child: Image.asset(
                  "Images/menu_icon/back_icon.jpg",
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
