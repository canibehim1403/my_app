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
                //margin: EdgeInsets.only( top: 30,),
                clipBehavior: Clip.hardEdge,
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                  ),
                  color: Colors.cyan,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                                "Images/other/test_logo.jpg",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "Images/other/test_logo.jpg",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "Images/other/test_logo.jpg",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "Images/other/test_logo.jpg",
                              height: 70,
                              width: 70,
                            ),
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
