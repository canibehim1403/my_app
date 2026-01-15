import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../login_page/apd_login_page.dart';

class ApdLoanCalculatorPage extends StatefulWidget {
  const ApdLoanCalculatorPage({super.key});

  @override
  State<ApdLoanCalculatorPage> createState() => _ApdLoanCalculatorPageState();
}

class _ApdLoanCalculatorPageState extends State<ApdLoanCalculatorPage> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController remarkController = TextEditingController();
  String amountText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Row(
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
                Text("Loan Calculator", style: TextStyle(color: Color(0xFF00428A), fontSize: 30)),
                SizedBox(width: 50,),
                Image.asset(
                  "Images/apd_image/loan_calculator_icon.jpg",
                  height: 60,
                  width: 60,
                )
              ],
            ),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(left: 30,),
              child: Text(
                "Select Currency",
                style: TextStyle(
                  color: Color(0xFF00428A),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 6,
                    child: Container(
                        child: Center(
                          child: SizedBox(
                            width: 180,
                            height: 60,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.cyanAccent.withOpacity(0.2),
                                  padding: EdgeInsets.symmetric(vertical: 14),
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ApdLoginPage()),
                                  );
                                },
                              child: Center(
                                child: Text(
                                  "KHR",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Center(
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyanAccent.withOpacity(0.2),
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ApdLoginPage()),
                            );
                          },
                          child: Center(
                            child: Text(
                              "USD",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 30,),
              child: Text(
                "Loan Amount",
                style: TextStyle(
                  color: Color(0xFF00428A),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Stack(
                children: [
                  TextField(
                    controller: amountController,
                    onChanged: (value) {
                      setState(() {
                        amountText = value.trim();
                      },
                      );
                    },
                    cursorColor: Colors.grey,
                    style: TextStyle(color: Colors.grey),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(18),
                    ],
                    decoration: InputDecoration(
                      labelText: "Amount",
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 320,
                    child: Container(
                      child: Text(
                        "USD",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 30,),
              child: Text(
                "Loan Term",
                style: TextStyle(
                  color: Color(0xFF00428A),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Stack(
                children: [
                  TextField(
                    controller: amountController,
                    onChanged: (value) {
                      setState(() {
                        amountText = value.trim();
                      },
                      );
                    },
                    cursorColor: Colors.grey,
                    style: TextStyle(color: Colors.grey),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(18),
                    ],
                    decoration: InputDecoration(
                      labelText: "Months",
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 30,),
              child: Text(
                "Interest Rate",
                style: TextStyle(
                  color: Color(0xFF00428A),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Stack(
                children: [
                  TextField(
                    controller: amountController,
                    onChanged: (value) {
                      setState(() {
                        amountText = value.trim();
                      },
                      );
                    },
                    cursorColor: Colors.grey,
                    style: TextStyle(color: Colors.grey),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(18),
                    ],
                    decoration: InputDecoration(
                      labelText: "",
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 330,
                    child: Container(
                      child: Icon(
                        Icons.percent,
                        color: Color(0xFF00428A),
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
