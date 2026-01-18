import 'package:flutter/material.dart';

import '../home_page/apd_homepage_classic.dart';

class ApdUserSettingPage extends StatefulWidget {
  ApdUserSettingPage({super.key});

  @override
  State<ApdUserSettingPage> createState() => _ApdUserSettingPageState();
}

class _ApdUserSettingPageState extends State<ApdUserSettingPage> {
  final List<int> steps = [30, 60, 120, 180];
  bool isOn = false;
  double _currentValue = 120;
  double _currentValue_s = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "Images/menu_icon/user_setting_page.jpg",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      left: 30,
                      top: 60,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 18,
                            width: 18,
                            child: Image.asset("Images/apd_image/vector.jpg"),
                          ),
                          SizedBox(width: 10),
                          Text("User Setting", style: TextStyle(color: Colors.white, fontSize: 22),),
                        ],
                      ),
                  ),
                  Positioned(
                      left: 60,
                      top: 90,
                      child: Container(
                        child: Text("V 10.0.0.10", style: TextStyle(color: Colors.grey, fontSize: 18),),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130),
                    child: Center(
                        child: Image.asset(
                          "Images/menu_icon/default_account_icon.jpg",
                          fit: BoxFit.cover,
                          height: 108,
                          width: 108,
                        )
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 50,),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/user_setting_account_icon.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "PERSONAL INFO",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Name",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 2.0,
                    ),
                  ),
                ),
                child: const Text(
                  "THORN RITHY",
                  style: TextStyle(
                    color: Color(0xFF00428A),
                    fontSize: 16,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Registered Phone Number",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  // This creates the blue line under your text
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 2.0,
                    ),
                  ),
                ),
                child: const Text(
                  "+855 123 456 789",
                  style: TextStyle(
                    color: Color(0xFF00428A),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                              "Images/menu_icon/global_icon.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "LANGUAGE",
                              style: TextStyle(
                                color: Color(0xFF00428A),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 50,),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/security_icon.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "SECURITY",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  // This creates the blue line under your text
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 1.2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: const Text(
                          "Change Password",
                          style: TextStyle(
                            color: Color(0xFF00428A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF005599),
                      width: 1.2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: const Text(
                          "Change PIN",
                          style: TextStyle(
                            color: Color(0xFF00428A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/icon_printfinger.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "BIOMETRIC",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 60, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Use Biometric Login",
                        style: TextStyle(
                          color: Color(0xFF00428A),
                          fontSize: 16,
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
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/biometric_transaction_limit_icon.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "BIOMETRIC TRANSACTION LIMIT",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 16,
                          activeTrackColor: const Color(0xFF00428A),
                          inactiveTrackColor: Colors.black12,
                          thumbColor: Colors.white,
                          valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                          valueIndicatorColor: const Color(0xFF00428A),
                          showValueIndicator: ShowValueIndicator.always,
                        ),
                        child: Slider(
                          value: _currentValue,
                          min: 0,
                          max: 500,
                          label: "${_currentValue.round()}\$",
                          onChanged: (value) {
                            setState(() {
                              _currentValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: const Padding(
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("0\$", style: TextStyle(color: Colors.black, fontSize: 16)),
                              Text("500\$", style: TextStyle(color: Colors.black, fontSize: 16)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  "Maximum transaction limit using Biometric",
                  style: TextStyle(
                    color: Color(0xFF00428A),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  children: [
                    Image.asset(
                      "Images/menu_icon/after_logout_icon.jpg",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "LOG OUT AFTER ",
                      style: TextStyle(
                        color: Color(0xFF00428A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Duration",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF00428A),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 5),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 16,
                            activeTrackColor: const Color(0xFF00428A),
                            inactiveTrackColor: Colors.black12,
                            thumbColor: Colors.white,
                            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                            valueIndicatorColor: const Color(0xFF00428A),
                            showValueIndicator: ShowValueIndicator.always,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 12.0,
                              pressedElevation: 8.0,
                            ),
                          ),
                          child: Slider(
                            value: _currentValue_s,
                            min: 30,
                            max: 180,
                            label: "${_currentValue_s.round()}\$",
                            onChanged: (value) {
                              setState(() {
                                _currentValue_s = value;
                              });
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("30s", style: TextStyle(color: Colors.black)),
                              Text("60s", style: TextStyle(color: Colors.black)),
                              Text("120s", style: TextStyle(color: Colors.black)),
                              Text("180s", style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            "PIN Required after ${_currentValue_s.round()} seconds",
                            style: const TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
                  Navigator.pop(context, MaterialPageRoute( builder: (context) => const ApdHomePageClassic()));
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