import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_internationalremittance_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_other_transfer_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_local_transfer_page.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_own_transfer_page.dart';
import '../home_page/apd_homepage_classic.dart';
class ApdTransferPage extends StatefulWidget {
  const ApdTransferPage({super.key});

  @override
  State<ApdTransferPage> createState() => _ApdTransferPageState();
}

class _ApdTransferPageState extends State<ApdTransferPage> {
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
                  SizedBox(height: 80),
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
                      Text("Transfer", style: TextStyle(color: Colors.blue, fontSize: 30)),
                      SizedBox(width: 170),
                      Image.asset(
                        "Images/menu_icon/transfer_icon.jpg",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 7,
                          offset: Offset(0, 6),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF3891C7),
                          Color(0xFF37B3C9),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Favorites",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey.withOpacity(0.1),
                              height: 80,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Image.asset(
                                        "Images/menu_icon/own_transfer_icon.jpg",
                                        fit: BoxFit.contain,
                                        height: 35,
                                        width: 35,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(top: 10, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Own Account Transfer",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdOwnTransferPage()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
                            ),
                            Container(
                              color: Colors.grey.withOpacity(0.1),
                              height: 80,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Image.asset(
                                        "Images/menu_icon/other_transfer_icon.jpg",
                                        fit: BoxFit.contain,
                                        height: 35,
                                        width: 35,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(top: 10, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Other Account Transfer",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdOtherTransferPage()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
                            ),
                            Container(
                              color: Colors.grey.withOpacity(0.1),
                              height: 80,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Image.asset(
                                        "Images/menu_icon/otherbank_transfer_icon.jpg",
                                        fit: BoxFit.contain,
                                        height: 35,
                                        width: 35,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(top: 10, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Local Transfer",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdLocalTransferPage()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                color: Colors.grey.withOpacity(0.5),
                                width: double.infinity,
                                height: 2,
                              ),
                            ),
                            Container(
                              color: Colors.grey.withOpacity(0.1),
                              height: 80,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Image.asset(
                                        "Images/menu_icon/ir_icon.jpg",
                                        fit: BoxFit.contain,
                                        height: 35,
                                        width: 35,
                                        alignment: Alignment.center,
                                      )
                                  ),
                                  Expanded(
                                      flex: 9,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(top: 10, right: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "International Transfer",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45), // match icon shape
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdInternationalTransferPage()),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 270,),
                  SizedBox(
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
                                      Navigator.pop(context, MaterialPageRoute(builder: (context) => ApdHomePageClassic()),
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
                                      Navigator.pop(context, MaterialPageRoute(builder: (context) => const ApdHomePageClassic()),
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
                ]
            ),
          ),
        ],
      ),
    );
  }
}