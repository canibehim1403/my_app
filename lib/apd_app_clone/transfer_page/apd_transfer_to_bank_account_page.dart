import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../home_page/apd_homepage_classic.dart';
import 'apd_local_transfer_page.dart';

class ApdTransferToBankAccountPage extends StatefulWidget {
  const ApdTransferToBankAccountPage({super.key});

  @override
  State<ApdTransferToBankAccountPage> createState() => _ApdTransferToBankAccountPageState();
}

class _ApdTransferToBankAccountPageState extends State<ApdTransferToBankAccountPage> {
  bool SelectedAccount = false;
  bool toAccountNumber = false;
  bool isOn = false;
  String amountText = '';
  String currencyText = '';
  final TextEditingController toAccountNumberController = TextEditingController();
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
                    Text("Transfer to\nBakong Account", style: TextStyle(color: Colors.blue, fontSize: 30)),
                  ],
                ),
                SizedBox(height: 10,),
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
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "APD",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.grey),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "BANK",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 9,
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Select Account", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                                Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                              ],
                            ),
                          )
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Image.asset("Images/menu_icon/other_bank_logo.jpg", height: 50, width: 50)
                      ),
                      Expanded(
                          flex: 9,
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Select Bank to Transfer", style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
                                Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
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
                      labelText: "To Account Number",
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
                SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(18),
                    ],
                    decoration: InputDecoration(
                      labelText: "Currency",
                      labelStyle: const TextStyle(color: Colors.grey),
                      hintText: "Enter currency",
                      hintStyle: const TextStyle(color: Colors.white54),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey, // highlight when focused
                          width: 2,
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
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
                SizedBox(height: 55,),
                SizedBox(
                  height: 70,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: (SelectedAccount && toAccountNumber && amountText.isNotEmpty && currencyText.isNotEmpty)
                          ? Colors.cyan
                          : Colors.grey,
                      shadowColor: Colors.grey,
                    ),
                    onPressed: (SelectedAccount && toAccountNumber && amountText.isNotEmpty && currencyText.isNotEmpty)
                        ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ApdHomePageClassic()),
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
              ],
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
                  Navigator.pop(context, MaterialPageRoute( builder: (context) => const ApdLocalTransferPage()));
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
