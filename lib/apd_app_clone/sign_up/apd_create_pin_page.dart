import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_success_page.dart';

class ApdCreatePinPage extends StatefulWidget {
  const ApdCreatePinPage({super.key});

  @override
  State<ApdCreatePinPage> createState() => _ApdCreatePinPageState();
}

class _ApdCreatePinPageState extends State<ApdCreatePinPage> {
  final int pinLength = 4;
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  bool isPinComplete = false;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(pinLength, (_) => TextEditingController());
    focusNodes = List.generate(pinLength, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index + 1 < pinLength) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      } else {
        FocusScope.of(context).unfocus();
      }
    } else {
      if (index > 0) {
        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
      }
    }
    setState(() {
      isPinComplete = controllers.every((c) => c.text.isNotEmpty);
    });
  }

  String getPin() => controllers.map((c) => c.text).join();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Images/apd_image/image_login.jpg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("Images/apd_image/vector.jpg"),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Create PIN",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "4-digit code is used for transaction\nauthentication",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pinLength, (index) {
                    return Container(
                      width: 40,
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 1.5),
                        ),
                      ),
                      child: TextField(
                        controller: controllers[index],
                        focusNode: focusNodes[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
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
                  child: const Text(
                    "Forgot PIN",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 140),
                SizedBox(
                  width: 230,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      isPinComplete ? Colors.cyan : Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: isPinComplete
                        ? () {
                      final pin = getPin();
                      print("Entered PIN: $pin");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ApdSuccessPage(),
                        ),
                      );
                    } : null,
                    child: const Text(
                      "Confirm",
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
    );
  }
}
