import 'package:flutter/material.dart';

import '../home_page/apd_homepage_classic.dart';
import '../transfer_page/apd_own_transfer_page.dart';

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
                      SizedBox(width: 100,),
                      Image.asset(
                        "Images/menu_icon/favorites_icon.jpg",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20,),
                    clipBehavior: Clip.hardEdge,
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyan.withOpacity(0.7),
                    ),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ApdOwnTransferPage()),
                            );
                          },
                          child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    "Images/menu_icon/check_inquiry_icon.jpg",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Check Inquiry",
                                            style: TextStyle(color: Colors.black, fontSize: 18)),
                                        Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey),
                                      ],
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
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20,),
                    clipBehavior: Clip.hardEdge,
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyan.withOpacity(0.7),
                    ),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ApdOwnTransferPage()),
                            );
                          },
                          child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    "Images/menu_icon/request_check_icon.jpg",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Request Check",
                                            style: TextStyle(color: Colors.black, fontSize: 18)),
                                        Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey),
                                      ],
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
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20,),
                    clipBehavior: Clip.hardEdge,
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyan.withOpacity(0.7),
                    ),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ApdOwnTransferPage()),
                            );
                          },
                          child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    "Images/menu_icon/stop_check_icon.jpg",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Stop Check",
                                            style: TextStyle(color: Colors.black, fontSize: 18)),
                                        Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey),
                                      ],
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
