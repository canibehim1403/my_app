import 'package:flutter/material.dart';

import '../home_page/apd_homepage_classic.dart';

class ApdCheckManagementPage extends StatelessWidget {
  const ApdCheckManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
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
                      Text("Check\nManagement", style: TextStyle(color: Colors.blue, fontSize: 30)),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Image.asset(
                          "Images/menu_icon/favorites_icon.jpg",
                          height: 50,
                          width: 50,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
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
