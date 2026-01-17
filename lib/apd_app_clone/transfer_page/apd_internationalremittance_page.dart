import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/apd_app_clone/transfer_page/apd_transfer_page.dart';

import '../home_page/apd_homepage_classic.dart';
class ApdInternationalTransferPage extends StatefulWidget {
  const ApdInternationalTransferPage({super.key});

  @override
  State<ApdInternationalTransferPage> createState() => _ApdInternationalTransferPageState();
}

class _ApdInternationalTransferPageState extends State<ApdInternationalTransferPage> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController transferCCYController = TextEditingController();
  final TextEditingController receiverNameController = TextEditingController();
  final TextEditingController receiverAccountNoController = TextEditingController();
  final TextEditingController receiverAddressController = TextEditingController();
  final TextEditingController receiverBankController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController chargeOptionsController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();

  String amountText = "";
  String transferCCYText = "";
  String receiverNameText = "";
  String receiverAccountNoText = "";
  String receiverAddressText = "";
  String receiverBankText = "";
  String emailText = "";
  String chargeOptionsText = "";
  String purposeText = "";
  bool isOn = false;
  bool isChecked = false;
  String selectedOption = "OUR";

  final Map<String, String> chargeOptions = {
    'OUR': 'Sender bears all fees',
    'BEN': 'All fees are borne by receiver',
    'SHA': 'Sender bears fees by APD only, other fees bear by receiver',
  };
  void _showChargeOptions(BuildContext context) async {
    final selected = await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext ctx) {
        return ListView(
          children: chargeOptions.entries.map((entry) {
            return ListTile(title: Text('${entry.key} : ${entry.value}'),
              onTap: () => Navigator.pop(ctx, entry.key),);
          }).toList(),
        );
      },
    );
    if (selected != null) {
      setState(() {
        selectedOption = selected;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
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
                        Text("International\nTransfer", style: TextStyle(color: Colors.blue, fontSize: 30)),
                      ],
                    ),
                    SizedBox(height: 20,),
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
                                  Text("To Account", style: TextStyle(color: Colors.grey, fontSize: 16)),
                                  Image.asset("Images/menu_icon/three_dot.jpg", height: 30),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
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
                        ],
                      ),
                    ),
                    //SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        controller: transferCCYController,
                        onChanged: (value) {
                          setState(() {
                            transferCCYText = value.trim();
                          },
                          );
                        },
                        cursorColor: Colors.grey,
                        style: const TextStyle(color: Colors.grey),
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(18),
                        ],
                        decoration: InputDecoration(
                          labelText: "Transfer CCY",
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Stack(
                        children: [
                          TextField(
                            controller: receiverNameController,
                            onChanged: (value) {
                              setState(() {
                                receiverNameText = value.trim();
                              },
                              );
                            },
                            cursorColor: Colors.grey,
                            style: const TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.text,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(18),
                            ],
                            decoration: InputDecoration(
                              labelText: "Receiver Name",
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Stack(
                        children: [
                          TextField(
                            controller: receiverAccountNoController,
                            onChanged: (value) {
                              setState(() {
                                receiverAccountNoText = value.trim();
                              },
                              );
                            },
                            cursorColor: Colors.grey,
                            style: const TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(18),
                            ],
                            decoration: InputDecoration(
                              labelText: "Receiver Account No.",
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Stack(
                        children: [
                          TextField(
                            controller: receiverAddressController,
                            onChanged: (value) {
                              setState(() {
                                receiverAddressText = value.trim();
                              },
                              );
                            },
                            cursorColor: Colors.grey,
                            style: const TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.text,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(18),
                            ],
                            decoration: InputDecoration(
                              labelText: "Receiver Address",
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Stack(
                        children: [
                          TextField(
                            controller: receiverBankController,
                            onChanged: (value) {
                              setState(() {
                                receiverBankText = value.trim();
                              },
                              );
                            },
                            cursorColor: Colors.grey,
                            style: const TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.text,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(18),
                            ],
                            decoration: InputDecoration(
                              labelText: "Receiver Bank Swift Code/BIC",
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Stack(
                        children: [
                          TextField(
                            controller: emailController,
                            onChanged: (value) {
                              setState(() {
                                emailText = value.trim();
                              },
                              );
                            },
                            cursorColor: Colors.grey,
                            style: TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.emailAddress,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(18),
                            ],
                            decoration: InputDecoration(
                              labelText: "Email",
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        cursorColor: Colors.grey,
                        style: const TextStyle(color: Colors.grey),
                        keyboardType: TextInputType.text,
                        controller: chargeOptionsController,
                        onChanged: (value) {
                          setState(() {
                            chargeOptionsText = value.trim();
                          },
                          );
                        },
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(18),
                        ],
                        decoration: InputDecoration(
                          labelText: "Charge Options",
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
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
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Stack(
                        children: [
                          TextField(
                            controller: purposeController,
                            onChanged: (value) {
                              setState(() {
                                purposeText = value.trim();
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
                              labelText: "Purpose",
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
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Add Favorites",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOn = !isOn;},
                              );},
                            child: Image.asset(
                              isOn ? "Images/menu_icon/add_favorites_on.jpg" : "Images/menu_icon/add_favorites_off.jpg",
                              height: 40,
                              width: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                              child: Transform.scale(
                                scale: 1.6,
                                child: Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  },
                                ),
                              ),
                          ),

                          Expanded(
                            flex: 10,
                              child: Text(
                                "I have read and agreed to the\nTerms & Conditions",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 200,),
                    Container(
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
        ),
      ),
    );
  }
}