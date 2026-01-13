import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';

import '../sign_up/apd_create_pin_page.dart';

class ApdOtpForgotpwPage extends StatefulWidget {
  const ApdOtpForgotpwPage({super.key});

  @override
  State<ApdOtpForgotpwPage> createState() => _ApdOtpForgotpwPageState();
}


class _ApdOtpForgotpwPageState extends State<ApdOtpForgotpwPage> {
  final int otpLength = 6;
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  bool isOtpComplete = false;
  bool _hasNavigated = false;

  int remainingSeconds = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(otpLength, (_) => TextEditingController());
    focusNodes = List.generate(otpLength, (_) => FocusNode());
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() {
      remainingSeconds = 60;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void _resetOtp() {
    for (var c in controllers) {
      c.clear();
    }
    setState(() {
      isOtpComplete = false;
    });
    _startTimer();
    // TODO: Hook into backend to send new OTP
    print("New OTP sent!");
  }
  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index + 1 < otpLength) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      } else {
        FocusScope.of(context).unfocus();
      }
    } else {
      if (index > 0) {
        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
      }
    }

    final completed = controllers.every((c) => c.text.isNotEmpty);

    setState(() {
      isOtpComplete = completed;
    });
    if (completed && !_hasNavigated) {
      _hasNavigated = true;
      Future.microtask(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const ApdCreatePinPage(),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Images/apd_image/background_otp_forgotpw.jpg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Image.asset("Images/apd_image/vector.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Enter OTP Code",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text("Please enter OTP 6-digit code sent via SMS to your registered phone No.*******345",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        size: 70,
                        color: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(otpLength, (index) {
                          return Container(
                            width: 40,
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.white, width: 1.5),
                              ),
                            ),
                            child: TextField(
                              controller: controllers[index],
                              focusNode: focusNodes[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24),
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              decoration: const InputDecoration(
                                counterText: "",
                                border: InputBorder.none,
                              ),
                              onChanged: (value) => _onChanged(value, index),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 40),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Text(
                          remainingSeconds > 0
                              ? "OTP code will expire in ${remainingSeconds}s"
                              : "OTP code has expired",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 40),
                      if (remainingSeconds == 0)
                        SizedBox(
                          width: 230,
                          height: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan,
                              padding:
                              const EdgeInsets.symmetric(vertical: 14),
                            ),
                            onPressed: _resetOtp,
                            child: const Text(
                              "Resend OTP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 800,
            bottom: 60,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 130),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'APD ',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
                      ),
                      TextSpan(
                        text: 'BANK',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
