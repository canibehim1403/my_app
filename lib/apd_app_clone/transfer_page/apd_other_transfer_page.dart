import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home_page/apd_homepage_classic.dart';
import 'apd_transfer_page.dart';
class ApdOtherTransferPage extends StatefulWidget {
  const ApdOtherTransferPage({super.key});

  @override
  State<ApdOtherTransferPage> createState() => _ApdOtherTransferPageState();
}

class _ApdOtherTransferPageState extends State<ApdOtherTransferPage> {
  bool fromAccountSelected = false;
  bool toAccountFilled = false;
  bool isOn = false;
  String amountText = '';
  //final TextEditingController accountController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController remarkController = TextEditingController();
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
                      Text("Other Account\nTransfer", style: TextStyle(color: Colors.blue, fontSize: 30)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          fromAccountSelected = true;
                        });
                      },
                      child: Image.asset("Images/menu_icon/from_account_image.jpg"),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      controller: amountController,
                      onChanged: (value) {
                        setState(() {
                          amountText = value.trim();
                        },
                        );
                      },
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(18),
                      ],
                      decoration: InputDecoration(
                        labelText: "Transfer to",
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
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      controller: amountController,
                      onChanged: (value) {
                        setState(() {
                          amountText = value.trim();
                          },
                        );
                      },
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
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
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(18),
                      ],
                      decoration: InputDecoration(
                        labelText: "Remark",
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
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "Add to Favorites",
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 20,
                            ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isOn = !isOn;},
                              );},
                          child: Image.asset(
                            isOn ? "Images/menu_icon/add_favorites_on.jpg" : "Images/menu_icon/add_favorites_off.jpg",
                            height: 50,
                            width: 70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    height: 70,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (fromAccountSelected && toAccountFilled && amountText.isNotEmpty)
                            ? Colors.cyan
                            : Colors.grey,
                        shadowColor: Colors.grey,
                      ),
                      onPressed: (fromAccountSelected && toAccountFilled && amountText.isNotEmpty)
                          ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ApdOtherTransferPage()),
                        );
                      } : null,
                      child: const Text(
                        "Transfer",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 119,),
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
                ]
            ),
          ),
        ],
      ),
    );
  }
}