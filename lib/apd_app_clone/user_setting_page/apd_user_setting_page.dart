import 'package:flutter/material.dart';

class ApdUserSettingPage extends StatefulWidget {
  ApdUserSettingPage({super.key});

  @override
  State<ApdUserSettingPage> createState() => _ApdUserSettingPageState();
}

class _ApdUserSettingPageState extends State<ApdUserSettingPage> {
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.4),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      "Images/menu_icon/user_setting_page.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130),
                    child: Center(
                        child: Image.asset(
                          "Images/menu_icon/default_account_icon.jpg",
                          fit: BoxFit.cover,
                          height: 108,
                          width: 108,
                        )
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 60,),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/user_setting_account_icon.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "PERSONAL INFO",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 60, right: 60),
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Name",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  // This creates the blue line under your text
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 2.0,
                    ),
                  ),
                ),
                child: const Text(
                  "THORN RITHY",
                  style: TextStyle(
                    color: Color(0xFF00428A),
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 60, right: 60),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Registered Phone Number",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  // This creates the blue line under your text
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 2.0,
                    ),
                  ),
                ),
                child: const Text(
                  "+855 123 456 789",
                  style: TextStyle(
                    color: Color(0xFF00428A),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 60, right: 60),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                              "Images/menu_icon/global_icon.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "LANGUAGE",
                              style: TextStyle(
                                color: Color(0xFF00428A),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 60,),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/security_icon.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "SECURITY",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  // This creates the blue line under your text
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 1.2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: const Text(
                          "Change Password",
                          style: TextStyle(
                            color: Color(0xFF00428A),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  // This creates the blue line under your text
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 1.2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: const Text(
                          "Change PIN",
                          style: TextStyle(
                            color: Color(0xFF00428A),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}