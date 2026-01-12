import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_page.dart';

import '../home_page/apd_homepage_classic.dart';
class ApdInternationalTransferPage extends StatefulWidget {
  const ApdInternationalTransferPage({super.key});

  @override
  State<ApdInternationalTransferPage> createState() => _ApdInternationalTransferPageState();
}

class _ApdInternationalTransferPageState extends State<ApdInternationalTransferPage> {
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
                      Text("International\nTransfer", style: TextStyle(color: Colors.blue, fontSize: 30)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Positioned(
                    child: Container(
                      height: 90,
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
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "APD",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "BANK",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          Expanded(
                              flex: 9,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Select Account",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Image.asset(
                                      "Images/menu_icon/three_dot.jpg",
                                      height: 30,
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "Images/menu_icon/arrow_classic.jpg",
                            fit: BoxFit.contain,
                            height: 35,
                            width: 80,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              width: double.infinity,
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
                                      topRight: Radius.circular(20))
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ApdHomePageClassic()),
                                      );
                                    },
                                    child: Image.asset(
                                      "Images/menu_icon/home_icon.jpg",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context, MaterialPageRoute(builder: (context) => const ApdTransferPage()),
                                      );
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
    );
  }
}