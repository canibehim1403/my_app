import 'package:flutter/material.dart';
import 'package:my_app/apd_app_clone/home_page/apd_homepage_classic.dart';

class ApdOtpForgotpwPage extends StatelessWidget {
  const ApdOtpForgotpwPage({super.key});

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
                        children: List.generate(6, (index) {
                          return Container(
                            width: 40,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.white, width: 1.5)),
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 24),
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              decoration: InputDecoration(
                                counterText: "", // Hide character counter
                                border: InputBorder.none,
                              ),
                            ),
                          );
                        },
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text("OTP code is expired in 60s",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 140),
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
                              MaterialPageRoute(builder: (context) => ApdHomePageClassic()),
                            );
                          },
                          child: Text("Confirm",
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
