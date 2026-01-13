import 'dart:async';
import 'package:flutter/material.dart';

import 'apd_create_pin_page.dart';

class ApdOtpPage extends StatefulWidget {
  const ApdOtpPage({super.key});

  @override
  State<ApdOtpPage> createState() => _ApdOtpPageState();
}

class _ApdOtpPageState extends State<ApdOtpPage> {
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

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    _timer?.cancel();
    super.dispose();
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
          Image.asset("Images/apd_image/image_login.jpg", fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("Images/apd_image/vector.jpg"),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text("Enter OTP Code",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    "Please enter OTP 6-digit code sent via SMS to your registered phone No.*******345",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isOtpComplete
                            ? Icons.mark_email_read_outlined
                            : Icons.email_outlined,
                        size: 70,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 40),
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
        ],
      ),
    );
  }
}
