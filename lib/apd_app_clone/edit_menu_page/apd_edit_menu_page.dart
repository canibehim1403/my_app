import 'package:flutter/material.dart';

class ApdEditMenuPage extends StatelessWidget {
  const ApdEditMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.asset(
              "Images/menu_icon/arrow_classic.jpg",
              fit: BoxFit.contain,
              height: 35,
              width: 80,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF37B3C9), Color(0xFF3891C7)],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
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
        ],
      ),
    );
  }
}
