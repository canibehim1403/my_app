import 'package:flutter/material.dart';

class ApdEditMenuPage extends StatelessWidget {
  const ApdEditMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        color: Colors.black,
                        width: 400,
                        height: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                    "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "Images/other/test_logo.jpg",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Text(
                                  "Exchange\nRate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
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
            ),
          ],
        ),
      ),
    );
  }
}
