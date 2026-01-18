import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_page.dart';
import '../home_page/apd_homepage_classic.dart';
import 'apd_transfer_to_bakong_account_page.dart';
import 'apd_transfer_to_bank_account_page.dart';
class ApdLocalTransferPage extends StatefulWidget {
  const ApdLocalTransferPage({super.key});

  @override
  State<ApdLocalTransferPage> createState() => _ApdLocalTransferPageState();
}

class _ApdLocalTransferPageState extends State<ApdLocalTransferPage> {
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
                      Text("Local Transfer", style: TextStyle(color: Colors.blue, fontSize: 30)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 7,
                          offset: const Offset(0, 6),
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF3891C7), Color(0xFF37B3C9)],
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Stack(
                            children: [
                              Image.asset(
                                "Images/menu_icon/elment.jpg",
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Fund transfer to local banks is made more\nconvenient with just a few simple steps",
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Image.asset(
                            "Images/menu_icon/local_transfer_logo.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
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
                                        "Images/menu_icon/bakong_logo.jpg",
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
                                                  "Transfer to Bakong Account",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
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
                                                        MaterialPageRoute(builder: (context) => const ApdTransferToBakongAccountPage()),
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
                                        "Images/menu_icon/bank_account_logo.jpg",
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
                                                  "Transfer to Bank Account",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(45),
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const ApdTransferToBankAccountPage()),
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
                ]
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