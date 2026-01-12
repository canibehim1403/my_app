import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/apd_app_clone/sign_up/apd_otp_page.dart';
import '../support_func/func.dart';
class ApdSignupPage extends StatefulWidget {
  const ApdSignupPage({super.key});

  @override
  State<ApdSignupPage> createState() => _ApdSignupPageState();
}

class _ApdSignupPageState extends State<ApdSignupPage> {
  final TextEditingController cifController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  String? selectedCountryCode;
  bool _obscureCreatePassword = true;
  bool _obscureConfirmPassword = true;
  bool _obscureBoxFill = true;
  bool isFormValid = false;

  @override
  void initState() {
    super.initState();
    cifController.addListener(_validateForm);
    phoneController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
    confirmPasswordController.addListener(_validateForm);
  }
  void _validateForm() {
    setState(() {
      isFormValid = cifController.text.isNotEmpty &&
          phoneController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty &&
          !_obscureBoxFill;
    });
  }
  @override
  void dispose() {
    cifController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("Images/apd_image/image_login.jpg", fit: BoxFit.cover),
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
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                          ),
                      ),
                      TextSpan(
                          text: 'BANK',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                SizedBox(height: 80),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: SizedBox(height: 20, width: 20, child: Image.asset("Images/apd_image/vector.jpg")),
                    ),
                    SizedBox(width: 20),
                    Text("Welcome to\nSign Up", style: TextStyle(color: Colors.white, fontSize: 30)),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  controller: cifController,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8),
                  ],
                  decoration: InputDecoration(
                    labelText: "Customer ID",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                        ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.greenAccent,
                            width: 2,
                        ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    // SizedBox(
                    //   width: 110,
                    //   child: TextField(
                    //     cursorColor: Colors.white,
                    //     style: TextStyle(color: Colors.white),
                    //     keyboardType: TextInputType.number,
                    //     inputFormatters: [
                    //       FilteringTextInputFormatter.digitsOnly,
                    //       LengthLimitingTextInputFormatter(3),
                    //     ],
                    //     decoration: InputDecoration(
                    //       labelText: "Country Code",
                    //       labelStyle: TextStyle(color: Colors.white),
                    //       enabledBorder: UnderlineInputBorder(
                    //           borderSide: BorderSide(
                    //               color: Colors.white,
                    //               width: 2,
                    //           ),
                    //       ),
                    //       focusedBorder: UnderlineInputBorder(
                    //           borderSide: BorderSide(
                    //               color: Colors.greenAccent,
                    //               width: 2,
                    //           ),
                    //       ),
                    //       suffixIcon: IconButton(
                    //         icon: Icon(
                    //             Icons.arrow_drop_down_circle_outlined,
                    //             color: Colors.white),
                    //         onPressed: () => print("Pressed"),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      width: 130,
                      child: DropdownButtonFormField<String>(
                        dropdownColor: Colors.blueGrey,
                        style: const TextStyle(color: Colors.white),
                        initialValue: selectedCountryCode,
                        items: [
                          DropdownMenuItem(value: "+1", child: Text("USA(+1)")),
                          DropdownMenuItem(value: "+855", child: Text("CAM(+855)")),
                          DropdownMenuItem(value: "+86", child: Text("CHINA(+86)")),
                          DropdownMenuItem(value: "+91", child: Text("India(+91)")),
                          DropdownMenuItem(value: "+81", child: Text("JAPAN(+81)")),
                          DropdownMenuItem(value: "+93", child: Text("AF(+93)")),
                          DropdownMenuItem(value: "+355", child: Text("AL(+355)")),
                          DropdownMenuItem(value: "+213", child: Text("DZ(+213)")),
                          DropdownMenuItem(value: "+244", child: Text("AO(+244)")),
                          DropdownMenuItem(value: "+672", child: Text("AQ(+672)")),
                        ],
                        // items: dialCodes.map((code) {
                        //   return DropdownMenuItem(
                        //     value: code,
                        //     child: Text(code, style: const TextStyle(color: Colors.white)),
                        //   );
                        // }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountryCode = value;
                          });
                        },
                        decoration: const InputDecoration(
                          labelText: "Country Code",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent, width: 2),
                          ),
                          suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10),
                          NoLeadingZeroFormatter(),
                        ],
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                              ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent,
                                  width: 2,
                              ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Form(
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _obscureCreatePassword,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.visiblePassword,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(16),
                      ],
                      decoration: InputDecoration(
                        labelText: "Create Password",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent, width: 2),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureCreatePassword ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white,
                          ),
                          onPressed: () =>
                              setState(() => _obscureCreatePassword = !_obscureCreatePassword),
                        ),
                      ),
                  ),
                ),
                // TextField(
                //   cursorColor: Colors.white,
                //   style: TextStyle(color: Colors.white),
                //   controller: passwordController,
                //   obscureText: _obscureCreatePassword,
                //   decoration: InputDecoration(
                //     labelText: "Create Password",
                //     labelStyle: TextStyle(color: Colors.white),
                //     enabledBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //             color: Colors.white,
                //             width: 2,
                //         ),
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //             color: Colors.greenAccent,
                //             width: 2,
                //         ),
                //     ),
                //     suffixIcon: IconButton(
                //       icon: Icon(
                //           _obscureCreatePassword ? Icons.visibility_off : Icons.visibility, color: Colors.white),
                //       onPressed: () => setState(() => _obscureCreatePassword = !_obscureCreatePassword),
                //     ),
                //   ),
                // ),
                SizedBox(height: 24),
                Form(
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    controller: confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    keyboardType: TextInputType.visiblePassword,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(16),
                    ],
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                          ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.greenAccent,
                              width: 2,
                          ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility, color: Colors.white),
                        onPressed: () => setState(() => _obscureConfirmPassword = !_obscureConfirmPassword),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        _obscureBoxFill ? Icons.check_box_outline_blank_outlined : Icons.check_box_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureBoxFill = !_obscureBoxFill;
                          _validateForm();
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        "I have read and agreed on the \nTerms & Conditions",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 140),
                SizedBox(
                  width: 230,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFormValid ? Colors.cyan : Colors.blue.withOpacity(0.7),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: isFormValid ? () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ApdOtpPage()),
                      );
                    } : null,
                    child: Text("Confirm", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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