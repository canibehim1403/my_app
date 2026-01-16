import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';

import '../login_page/apd_login_page.dart';

class ApdLoanCalculatorPage extends StatefulWidget {
  const ApdLoanCalculatorPage({super.key});


  @override
  State<ApdLoanCalculatorPage> createState() => _ApdLoanCalculatorPageState();
}

class _ApdLoanCalculatorPageState extends State<ApdLoanCalculatorPage> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController loantermController = TextEditingController();
  final TextEditingController interestrateController = TextEditingController();
  String amountText = '';
  String loantermText = '';
  String interestrateText = '';
  String selectedCurrency = '';
  double _dragPosition = 0.0;
  bool get _isFormComplete {
    return selectedCurrency.isNotEmpty
        && amountController.text.trim().isNotEmpty
        && loantermController.text.trim().isNotEmpty
        && interestrateController.text.trim().isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width - 80;
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
                      child: InkWell(
                        onTap: () {
                          setState(() => selectedCurrency = "KHR");
                        },
                        child: Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            color: selectedCurrency == "KHR"
                                ? Colors.cyan // highlight when selected
                                : Colors.cyanAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "KHR",
                            style: const TextStyle(
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
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() => selectedCurrency = "USD");
                        },
                        child: Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            color: selectedCurrency == "USD"
                                ? Colors.cyan
                                : Colors.cyanAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "USD",
                            style: const TextStyle(
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
                    controller: loantermController,
                    onChanged: (value) {
                      setState(() {
                        loantermText = value.trim();
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
                    controller: interestrateController,
                    onChanged: (value) {
                      setState(() {
                        interestrateText = value.trim();
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
            SizedBox(height: 80,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.cyan,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      "Swipe to Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Positioned(
                    left: _dragPosition,
                    top: 10,
                    child: GestureDetector(
                        onHorizontalDragUpdate: (details) {
                          if (!_isFormComplete) return;
                          setState(() {
                            _dragPosition += details.delta.dx;
                            _dragPosition = _dragPosition.clamp(0.0, maxWidth - 80);
                          });},
                        onHorizontalDragEnd: (details) {
                          if (!_isFormComplete) return;
                          if (_dragPosition > maxWidth * 0.7) {
                            print("Swipe confirmed! Run calculation...");
                          } else {
                            setState(() => _dragPosition = 0.0);
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 5,),
                          child: Image.asset(
                            "Images/menu_icon/swipe_to_confirm_icon.jpg",
                            height: 60,
                            width: 60,
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 87,),
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
          ],
        ),
      ),
    );
  }
}
