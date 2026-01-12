import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/login_page/apd_otp_forgotpw_page.dart';

class ApdForgotPasswordDialog extends StatefulWidget {
  @override
  _ApdForgotPasswordDialogState createState() => _ApdForgotPasswordDialogState();
}

class _ApdForgotPasswordDialogState extends State<ApdForgotPasswordDialog> {
  bool _obscurePassword = true;
  bool _obscureReEnterPassword = true;

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
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.white.withOpacity(0.1), // optional overlay
            ),
          ),
          // Positioned(
          //     top: 160,
          //     left: 0,
          //     right: 0,
          //     child: ClipPath(
          //         child: Container(
          //           width: 100,
          //           height: 250,
          //           child: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //             Stack(
          //             alignment: Alignment.center,
          //             children: [
          //               SizedBox(height: 20),
          //               CustomPaint(
          //                 size: Size(180, 160),
          //                 painter: GoldTrianglePainter(),
          //                 ),
          //               RichText(
          //                 text: TextSpan(
          //                   children: [
          //                     TextSpan(
          //                       text: 'APD ',
          //                       style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
          //                     ),
          //                     TextSpan(
          //                       text: 'BANK',
          //                       style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200, color: Colors.white),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          Container(
            // height: 600,
            // width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Dialog(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("Forgot Password?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Enter CIF No.",
                            labelStyle: TextStyle(color: Colors.lightBlue),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Phone Number",
                            labelStyle: TextStyle(color: Colors.lightBlue),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            labelText: "Enter New Password",
                            labelStyle: TextStyle(color: Colors.lightBlue),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  !_obscurePassword ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          obscureText: _obscureReEnterPassword,
                          decoration: InputDecoration(
                            labelText: "Re-enter New Password",
                            labelStyle: TextStyle(color: Colors.lightBlue),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  !_obscureReEnterPassword ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureReEnterPassword = !_obscureReEnterPassword;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        width: 230,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            padding: EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ApdOtpForgotpwPage()),
                            );
                          },
                          child: Text("Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
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

