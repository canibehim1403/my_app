import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_page.dart';
class ApdOwnTransferPage extends StatefulWidget {
  const ApdOwnTransferPage({super.key});

  @override
  State<ApdOwnTransferPage> createState() => _ApdOwnTransferPageState();
}

class _ApdOwnTransferPageState extends State<ApdOwnTransferPage> {
  bool fromAccountSelected = false;
  bool toAccountSelected = false;
  String amountText = '';
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
                      Text("Own Account\nTransfer", style: TextStyle(color: Colors.blue, fontSize: 30)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("APD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.grey)),
                              Text("BANK", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.grey)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("From Account", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                                Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Image.asset(
                      "Images/menu_icon/between_account_icon.jpg",
                      height: 25,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("APD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.grey)),
                              Text("BANK", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.grey)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("To Account", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                                Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                  SizedBox(height: 90,),
                  SizedBox(
                    height: 70,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (fromAccountSelected && toAccountSelected && amountText.isNotEmpty)
                            ? Colors.cyan
                            : Colors.grey,
                        shadowColor: Colors.grey,
                      ),
                      onPressed: (fromAccountSelected && toAccountSelected && amountText.isNotEmpty)
                          ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ApdOwnTransferPage()),
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
                  SizedBox(height: 132,),
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ApdHomePageClassic()),
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
                ],
            ),
          ),
        ],
      ),
    );
  }
}