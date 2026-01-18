import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/login_page/apd_login_page.dart';
import 'package:my_app/apd_app_clone/user_setting_page/apd_user_setting_page.dart';

class ApdPopUserSettingPage extends StatelessWidget {
  const ApdPopUserSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "Images/menu_icon/arrow_classic.jpg",
                fit: BoxFit.contain,
                height: 35,
                width: 80,
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF37B3C9),
                      Color(0xFF3891C7),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 60, top: 45),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                              child: Image.asset(
                                "Images/menu_icon/user_setting_icon.jpg",
                                height: 25,
                                width: 25,
                              ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            flex: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "User Setting",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(45),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ApdUserSettingPage()),
                                      );
                                    },
                                    child: Image.asset(
                                      "Images/menu_icon/three_dot.jpg",
                                      height: 35,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 60, top: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              "Images/menu_icon/contact_us_icon.jpg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                              flex: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact us",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Image.asset(
                                    "Images/menu_icon/three_dot.jpg",
                                    height: 35,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 60, top: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              "Images/menu_icon/faq_icon.jpg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                              flex: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "FAQ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(45), // match icon shape
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ApdUserSettingPage()),
                                        );
                                      },
                                      child: Image.asset(
                                        "Images/menu_icon/three_dot.jpg",
                                        height: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 60, top: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              "Images/menu_icon/term_condition_icon.jpg",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                              flex: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Term & Conditions",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Image.asset(
                                    "Images/menu_icon/three_dot.jpg",
                                    height: 35,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 60, top: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              "Images/menu_icon/about_us_icon.jpg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                              flex: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "About us",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Image.asset(
                                    "Images/menu_icon/three_dot.jpg",
                                    height: 35,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Center(
                      child: SizedBox(
                        width: 230,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan.withOpacity(0.5),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ApdLoginPage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                  child: Image.asset(
                                    "Images/menu_icon/logout_icon.jpg",
                                    height: 30,
                                    width: 30,
                                    color: Colors.white,
                                  ),
                              ),
                              Expanded(
                                flex: 9,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Log out",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
