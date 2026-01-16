import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/loan_calculator_page/apd_loan_calculator_page.dart';

class ApdLoanCalculatorResultPage extends StatefulWidget {
  const ApdLoanCalculatorResultPage({super.key});

  @override
  State<ApdLoanCalculatorResultPage> createState() => _ApdLoanCalculatorResultPageState();
}

class _ApdLoanCalculatorResultPageState extends State<ApdLoanCalculatorResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          children: [
            //SizedBox(height: 70),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("Images/apd_image/vector.jpg"),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Loan Calculator\nResult", style: TextStyle(color: Color(0xFF00428A), fontSize: 30)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              flex: 10,
              child: Container(
                //color: Colors.blue,
                height: 650,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(left: 30,),
                      child: Text(
                        "Result Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Text(
                                "Monthly Payment",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Text(
                                "Hello",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Text(
                                "Total of 12 Payments",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Text(
                                "Hello",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Text(
                                "Total Interest",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Text(
                                "Hello",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30,),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "Principal",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "10.5%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "Interest",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "23.9%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
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
            ),
            Column(
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
                              Navigator.pop(context, MaterialPageRoute(builder: (context) => const ApdLoanCalculatorPage()),
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
          ],
        ),
      ),
    );
  }
}
