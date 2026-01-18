import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/login_page/apd_otp_forgotpw_page.dart';
class ApdFavoritesPage extends StatefulWidget {
  const ApdFavoritesPage({super.key});

  @override
  State<ApdFavoritesPage> createState() => _ApdFavoritesPageState();
}

class _ApdFavoritesPageState extends State<ApdFavoritesPage> {
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
                      Text("Favorites", style: TextStyle(color: Colors.blue, fontSize: 30)),
                      SizedBox(width: 170),
                      Image.asset(
                        "Images/menu_icon/favorites_icon.jpg",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 210, bottom: 100),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "Images/menu_icon/favorites_null_icon.jpg",
                                    height: 200,
                                    width: 200,
                                  ),
                                  Positioned(
                                    left: 130,
                                    top: 125,
                                    child: Image.asset(
                                      "Images/menu_icon/favorites_null2_icon.jpg",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "You don’t have \nFavorites list yet",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Stack(
              children: [
                Positioned(
                  right: 30,
                  bottom: 150,
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => ApdOtpForgotpwPage()),
                        );
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                        ),
                      ),
                  ),
                ),
              ],
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