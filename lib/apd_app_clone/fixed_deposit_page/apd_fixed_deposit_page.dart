import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
class ApdFixedDepositPage extends StatefulWidget {
  const ApdFixedDepositPage({super.key});

  @override
  State<ApdFixedDepositPage> createState() => _ApdFixedDepositPageState();
}

class _ApdFixedDepositPageState extends State<ApdFixedDepositPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
                    Text("Fixed Deposit", style: TextStyle(color: Colors.blue, fontSize: 30)),
                    SizedBox(width: 110),
                    Image.asset(
                      "Images/menu_icon/fd_icon.jpg",
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "Images/menu_icon/account_background.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                              child: Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Monthly Interest\nWithdrawal (USD)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10%-20%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "Images/menu_icon/account_background.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text(
                                "Monthly Interest\nWithdrawal (USD)",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10%-20%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "Images/menu_icon/account_background.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text(
                                "Monthly Interest\nWithdrawal (USD)",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10%-20%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "Images/menu_icon/account_background.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text(
                                "Monthly Interest\nWithdrawal (USD)",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10%-20%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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